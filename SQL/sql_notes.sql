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
    name VARCHAR (10),
    breed VARCHAR (50),
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

-- The following insert will create the table above:
INSERT INTO dogs(name, breed, age) VALUES('Blue', 'Shih tzu', 3);
INSERT INTO dogs(name, breed, age) VALUES('Jojo', 'Lhasa apso', 6);
