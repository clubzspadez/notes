/***
 *     /$$      /$$            /$$$$$$   /$$$$$$  /$$
 *    | $$$    /$$$           /$$__  $$ /$$__  $$| $$
 *    | $$$$  /$$$$ /$$   /$$| $$  \__/| $$  \ $$| $$
 *    | $$ $$/$$ $$| $$  | $$|  $$$$$$ | $$  | $$| $$
 *    | $$  $$$| $$| $$  | $$ \____  $$| $$  | $$| $$
 *    | $$\  $ | $$| $$  | $$ /$$  \ $$| $$/$$ $$| $$
 *    | $$ \/  | $$|  $$$$$$$|  $$$$$$/|  $$$$$$/| $$$$$$$$
 *    |__/     |__/ \____  $$ \______/  \____ $$$|________/
 *                  /$$  | $$                \__/
 *                 |  $$$$$$/
 *                  \______/
 */

/* How to create a database*/
CREATE DATABASE database_name;

/* How to delete a database*/
DROP DATABASE database_name;

/* To show available databases*/
show databases;

/* To use a database*/
USE database_name;

-- To view current used database
SELECT database();

/***
 *      _____        _          _
 *     |  __ \      | |        | |
 *     | |  | | __ _| |_ __ _  | |_ _   _ _ __   ___  ___
 *     | |  | |/ _` | __/ _` | | __| | | | '_ \ / _ \/ __|
 *     | |__| | (_| | || (_| | | |_| |_| | |_) |  __/\__ \
 *     |_____/ \__,_|\__\__,_|  \__|\__, | .__/ \___||___/
 *                                   __/ | |
 *                                  |___/|_|
 */
/*
 - A database can contain tables of information
 - They can also be relational
 - Each table contains columns of information that should match the columns data type
 - There are 3 types of data
    - Numeric
        - TINYINT	A very small integer
        - SMALLINT	A small integer
        - MEDIUMINT	A medium-sized integer
        - INT	A standard integer
        - BIGINT	A large integer
        - DECIMAL	A fixed-point number
        - FLOAT	A single-precision floating point number
        - DOUBLE	A double-precision floating point number
        - BIT	A bit field
    - String
        - CHAR	A fixed-length nonbinary (character) string
        - VARCHAR	A variable-length non-binary string
        - BINARY	A fixed-length binary string
        - VARBINARY	A variable-length binary string
        - TINYBLOB	A very small BLOB (binary large object)
        - BLOB	A small BLOB
        - MEDIUMBLOB	A medium-sized BLOB
        - LONGBLOB	A large BLOB
        - TINYTEXT	A very small non-binary string
        - TEXT	A small non-binary string
        - MEDIUMTEXT	A medium-sized non-binary string
        - LONGTEXT	A large non-binary string
        - ENUM	An enumeration; each column value may be assigned one enumeration member
        - SET	A set; each column value may be assigned zero or more SET members
    - Date
        - DATE	A date value in CCYY-MM-DD format
        - TIME	A time value in hh:mm:ss format
        - DATETIME	A date and time value inCCYY-MM-DD hh:mm:ssformat
        - TIMESTAMP	A timestamp value in CCYY-MM-DD hh:mm:ss format
        - YEAR	A year value in CCYY or YY format
*/

-- Once a database is created and used we can then start to define our own tables


/***
 *     $$$$$$\                                 $$\     $$\                           $$$$$$$$\        $$\       $$\
 *    $$  __$$\                                $$ |    \__|                          \__$$  __|       $$ |      $$ |
 *    $$ /  \__| $$$$$$\   $$$$$$\   $$$$$$\ $$$$$$\   $$\ $$$$$$$\   $$$$$$\           $$ | $$$$$$\  $$$$$$$\  $$ | $$$$$$\   $$$$$$$\
 *    $$ |      $$  __$$\ $$  __$$\  \____$$\\_$$  _|  $$ |$$  __$$\ $$  __$$\          $$ | \____$$\ $$  __$$\ $$ |$$  __$$\ $$  _____|
 *    $$ |      $$ |  \__|$$$$$$$$ | $$$$$$$ | $$ |    $$ |$$ |  $$ |$$ /  $$ |         $$ | $$$$$$$ |$$ |  $$ |$$ |$$$$$$$$ |\$$$$$$\
 *    $$ |  $$\ $$ |      $$   ____|$$  __$$ | $$ |$$\ $$ |$$ |  $$ |$$ |  $$ |         $$ |$$  __$$ |$$ |  $$ |$$ |$$   ____| \____$$\
 *    \$$$$$$  |$$ |      \$$$$$$$\ \$$$$$$$ | \$$$$  |$$ |$$ |  $$ |\$$$$$$$ |         $$ |\$$$$$$$ |$$$$$$$  |$$ |\$$$$$$$\ $$$$$$$  |
 *     \______/ \__|       \_______| \_______|  \____/ \__|\__|  \__| \____$$ |         \__| \_______|\_______/ \__| \_______|\_______/
 *                                                                   $$\   $$ |
 *                                                                   \$$$$$$  |
 *                                                                    \______/
 */

 -- Table name - dogs figure 1
-- +--------------------+---------------------+----------+
-- | name(varchar(10)) | breed(varchar(50)) | age(int) |
-- +--------------------+---------------------+----------+
-- +--------------------+---------------------+----------+

/* The table above is created with the following commands
 CREATE TABLE table_name(
    column_name data_type,
    column_name data_type
    );
*/
CREATE TABLE dogs(
    name VARCHAR(10),
    breed VARCHAR(50),
    age INT
);
-- Look above to figure 1
---------------------------------------------------------------

-- After creating the table we can check it with the following commands
-- To see that the table exists
SHOW TABLES;

-- Too see data in the table
SHOW COLUMNS FROM table_name;
-- or using DESC
DESC table_name;

-- To delete the table
DROP TABLE table_name;

/* Inserting values into our table */
-- To insert values for the table
INSERT INTO table_name(
    column_name1, column_name2
) VALUES(value1, value2);
/*  -- ORDER MATTERS --
    - The insert order for the column name and value must match in order
    - ie: if you the first column will contain a specific value then the insert into statement much match those orders
*/

-- Table name - dogs with data figure 2
-- +--------------------+---------------------+----------+
-- | name(varchar(10)) | breed(varchar(50)) | age(int) |
-- +--------------------+---------------------+----------+
-- | Blue               | Shih tzu            |        3 |
-- | Jojo               | Lhasa apso          |        6 |
-- +--------------------+---------------------+----------+

-- The following shows how to insert values that will create the table above:
INSERT INTO dogs(name, breed, age) VALUES ('Blue', 'Shih tzu', 3);
INSERT INTO dogs(name, breed, age) VALUES ('Jojo', 'Lhasa apso', 6);

-- To view data from any given table use the following
SELECT * from table_name


-- To do multiple inserts -> ORDER MATERS
-- INSERT INTO table_name(column_name1, column_name2)
-- VALUES (data1, data2), (data1, data2), (data1, data2);
--The following will create exact figure 2 table data
INSERT INTO dogs(name, breed, age) VALUES ('Blue', 'Shih tzu', 3), ('Jojo', 'Lhasa apso', 6);

-- ^
-- Table name - dogs with data figure 2
-- +--------------------+---------------------+----------+
-- | name(varchar(10)) | breed(varchar(50)) | age(int) |
-- +--------------------+---------------------+----------+
-- | Blue               | Shih tzu            |        3 |
-- | Jojo               | Lhasa apso          |        6 |
-- +--------------------+---------------------+----------+

-- To show warnings in conosle
SHOW WARNINGS;

/**
 *      _   _       _ _  __      __   _
 *     | \ | |     | | | \ \    / /  | |
 *     |  \| |_   _| | |  \ \  / /_ _| |_   _  ___  ___
 *     | . ` | | | | | |   \ \/ / _` | | | | |/ _ \/ __|
 *     | |\  | |_| | | |    \  / (_| | | |_| |  __/\__ \
 *     |_| \_|\__,_|_|_|     \/ \__,_|_|\__,_|\___||___/
 *
 *
 */

-- When creating a table you can put assign null values to columns if no value is specified on INSERT
-- For example if we insert our dog values without any specified age
INSERT INTO dogs(name, breed, age) VALUES ('Blue', 'Shih tzu'), ('Jojo', 'Lhasa apso');
-- -- Table name - dogs with Null data figure 3
-- -- +--------------------+---------------------+----------+
-- -- | name(varchar(10)) | breed(varchar(50)) | age(int) |
-- -- +--------------------+---------------------+----------+
-- -- | Blue               | Shih tzu            |     NULL |
-- -- | Jojo               | Lhasa apso          |     NULL |
-- -- +--------------------+---------------------+----------+

-- The same can be said if we do not specify any values
INSERT INTO dogs() VALUES ();

-- -- Table name - dogs with all Null data figure 4
-- -- +--------------------+---------------------+----------+
-- -- | name(varchar(10)) | breed(varchar(50)) | age(int) |
-- -- +--------------------+---------------------+----------+
-- -- | NULL               | NULL                |     NULL |
-- -- +--------------------+---------------------+----------+

-- If we want to combat this then when initially create our tables we need to include NOT NULL
-- This will tell the table that our columns cannot be null

CREATE TABLE table_name(
    name  varchar(100) NOT NULL,
    age INT NOT NULL
);
-- With the command above our columns will have the NULL column set to NO
-- +-------+---------------+------+-----+---------+----------+
-- | FIELD |     TYPE      | NULL | KEY | DEFAULT | EXTRA    |
-- +-------+---------------+------+-----+---------+----------+
-- | name  |  varchar(100) | NO   |     | NULL    |          |
-- | age   |  int(11)      | NO   |     | NULL    |          |
-- +-------+---------------+------+-----+---------+----------+


-- With the following dogs table now created with NOT NULL
CREATE TABLE dogs(
    name VARCHAR(10) NOT NULL,
    breed VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

INSERT INTO dogs(name, breed ) VALUES ('Blue', 'Shih tzu'), ('Jojo', 'Lhasa apso');
-- After inserting data with the following command above
-- We will notice that warnings will be sent back regarding this query
-- If we look into the table
SELECT * FROM dogs;
-- -- Table name - Dogs table no null data figure 5
-- -- +--------------------+---------------------+----------+
-- -- | name(varchar(10)) | breed(varchar(50)) | age(int) |
-- -- +--------------------+---------------------+----------+
-- -- | Blue               | Shih tzu            |       0 |
-- -- | Jojo               | Lhasa apso          |       0 |
-- -- +--------------------+---------------------+----------+
-- Because age cannot be null our column defaults to an integer value of 0
-- This logic also applies to chars


INSERT INTO dogs(age) VALUES (3), (6);
-- -- Table name - Dogs table no null data figure 6
-- -- +--------------------+---------------------+----------+
-- -- | name(varchar(10)) | breed(varchar(50)) | age(int) |
-- -- +--------------------+---------------------+----------+
-- -- |                    |                     |       3 |
-- -- |                    |                     |       6 |
-- -- +--------------------+---------------------+----------+
--  Our columns name and breed have empty strings ''  as we cannot default to null but instead to characters
