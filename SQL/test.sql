-- -- DROP DATABASE IF EXISTS book_shop;
-- -- CREATE DATABASE book_shop;
-- -- USE book_shop;
-- -- SELECT book_shop;
-- DROP TABLE IF EXISTS books;
--
-- CREATE TABLE books
-- (
-- book_id SERIAL NOT NULL PRIMARY KEY,
-- title VARCHAR(100),
-- author_fname VARCHAR(100),
-- author_lname VARCHAR(100),
-- released_year INT,
-- stock_quantity INT,
-- pages INT
-- );
--
-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ('Where I''m Calling From: Selected Stories', 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- INSERT INTO payout_file_runs("transactionDate", "transactionId", "adaptEvent", sponsor, "currencyIds")
-- VALUES ('2019-10-16 12:19:07.444261-04', '2d0ec5b9-b006-4fd5-92f6-fd1898a4af3c', 'jrodtesting', '71bb76d3-dae9-41da-a36d-8bc7da5126b9', '{2b3138a6-d39e-43e5-9c61-75c656c3f378,6026b6d1-add9-4ee8-93ea-cecb9a0960ce}');
-- DROP TABLE IF EXISTS temporary_payout;
-- CREATE TEMP TABLE temporary_payout("transactionDate" timestamp with time zone,
-- "orderId" VARCHAR,
-- "transactionId" uuid,
-- "adaptEvent" VARCHAR,
-- status VARCHAR,
-- sponsor uuid,
-- currency uuid,
-- "platformId" character varying,
-- "teamId" character varying,
-- grantsTotal bigint,
-- "appliedPayoutThreshold" integer [],
-- "currencyType" currency_type,
-- "perDollarConversion" integer,
-- "totalEarnedPayouts" bigint,
-- "purchasesTotal" bigint,
-- "owedPayout" bigint) ON COMMIT DROP;
SELECT v_transaction_date AS "transactionDate",
              v_payout_type AS "orderId",
              v_transaction_id AS "transactionId",
              v_adapt_event AS "adaptEvent",
              v_status AS status,
              grants_thresholds.sponsor,
              grants_thresholds.currency,
              grants_thresholds."platformId",
              grants_thresholds."teamId",
              grants_thresholds."grantsTotal",
              grants_thresholds."appliedPayoutThresholds",
              grants_thresholds.currency_type,
              grants_thresholds."perDollarConversion",
              grants_thresholds."totalEarnedPayouts",
              "purchasesSums"."purchasesTotal",
              CASE
                WHEN "purchasesSums"."purchasesTotal" IS NULL THEN grants_thresholds."totalEarnedPayouts"
                ELSE (grants_thresholds."totalEarnedPayouts" - "purchasesSums"."purchasesTotal")
              END AS "owedPayout"
        --grants_thresholds: apply thresholds to sum of earned grants and return the greatest threshold that has been met
        FROM  (SELECT thresholds.sponsor, thresholds.currency, thresholds."platformId", thresholds."teamId", thresholds."grantsTotal", thresholds."appliedPayoutThresholds", thresholds.currency_type, thresholds."perDollarConversion",
               CASE
                 WHEN thresholds."appliedPayoutThresholds" IS NULL THEN thresholds."grantsTotal"
                 WHEN thresholds."grantsTotal" >= thresholds."appliedPayoutThresholds" [ 5 ] THEN thresholds."appliedPayoutThresholds" [ 5 ]
                 WHEN thresholds."grantsTotal" >= thresholds."appliedPayoutThresholds" [ 4 ] THEN thresholds."appliedPayoutThresholds" [ 4 ]
                 WHEN thresholds."grantsTotal" >= thresholds."appliedPayoutThresholds" [ 3 ] THEN thresholds."appliedPayoutThresholds" [ 3 ]
                 WHEN thresholds."grantsTotal" >= thresholds."appliedPayoutThresholds" [ 2 ] THEN thresholds."appliedPayoutThresholds" [ 2 ]
                 WHEN thresholds."grantsTotal" >= thresholds."appliedPayoutThresholds" [ 1 ] THEN thresholds."appliedPayoutThresholds" [ 1 ]
                 ELSE 0
               END AS "totalEarnedPayouts"
                --thresholds: join grantsSum with currencies to pull the correct set of thresholds (based on whether part of a family)
                FROM  (SELECT grants_sums.sponsor, grants_sums.currency, grants_sums."platformId", grants_sums."teamId", grants_sums."grantsTotal",
                              CASE
                                WHEN grants_sums."teamId" != NULL AND currencies."familyRewardsEnabled" IS TRUE THEN currencies."familyPayoutThresholds"
                                ELSE currencies."payoutThresholds"
                              END AS "appliedPayoutThresholds",
                              currencies.type AS currency_type,
                              currencies."perDollar" AS "perDollarConversion"
                       -- grants_sum: sum of all grants per currency and payee (as platform id as referred by purchases table and return to adapt)
                       FROM (SELECT grants_payee.sponsor, grants_payee.currency, grants_payee.adjusted_payee AS "platformId", grants_payee."teamId",
                                    SUM(CAST(detail->>'amount' AS INTEGER)) AS "grantsTotal"
                             -- grants_payee: substitute platformId as payee if no payee is specified (payee is new field for family rewards, need to run migration to pull over platform id for all previous data
                             FROM (SELECT grants.sponsor, grants.currency, "teamId", grants.detail,
                                          CASE
                                            WHEN payee IS NULL THEN grants."platformId"
                                            ELSE payee
                                          END AS adjusted_payee
                                   FROM grants
                                   WHERE grants.currency = ANY(v_currency_ids)
                                   AND grants.status = 'complete'
                                   AND grants."platformId" IS NOT NULL) AS grants_payee
                             GROUP BY grants_payee.sponsor, grants_payee.currency, grants_payee.adjusted_payee, grants_payee."teamId") AS grants_sums
                LEFT JOIN currencies ON currencies.id = grants_sums.currency) AS thresholds)
        AS grants_thresholds
        LEFT JOIN (SELECT purchases.currency, purchases."platformId", "teamId", SUM(purchases.amount) AS "purchasesTotal"
                   FROM purchases
                   WHERE purchases.currency = ANY(v_currency_ids)
                   AND purchases.status = 'complete'
                   AND purchases."platformId" IS NOT NULL
                   GROUP BY purchases.currency, purchases."platformId", purchases."teamId") AS "purchasesSums"
        ON grants_thresholds.currency = "purchasesSums".currency
        AND grants_thresholds."platformId" = "purchasesSums"."platformId" AND (grants_thresholds."teamId" = "purchasesSums"."teamId" OR (grants_thresholds."teamId" IS NULL AND "purchasesSums"."teamId" IS NULL))
