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
-- ****** POSTGRES UNLIKE MYSQL TREATS STRINGS AS CASE SENSITIVE IN ALL CIRCUMSTANCES
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

/***
 *       _____      _   _   _               _____        __            _ _
 *      / ____|    | | | | (_)             |  __ \      / _|          | | |
 *     | (___   ___| |_| |_ _ _ __   __ _  | |  | | ___| |_ __ _ _   _| | |_ ___
 *      \___ \ / _ \ __| __| | '_ \ / _` | | |  | |/ _ \  _/ _` | | | | | __/ __|
 *      ____) |  __/ |_| |_| | | | | (_| | | |__| |  __/ || (_| | |_| | | |_\__ \
 *     |_____/ \___|\__|\__|_|_| |_|\__, | |_____/ \___|_| \__,_|\__,_|_|\__|___/
 *                                   __/ |
 *                                  |___/
 */
-- If we need to create a table with default values we can do so with the following
-- By providing the DEFAULT flag we can then pass a value that matches the data type for the column
CREATE TABLE table_name
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );

-- +-------+---------------+------+-----+--------------------+----------+
-- | FIELD |     TYPE      | NULL | KEY |      DEFAULT       | EXTRA    |
-- +-------+---------------+------+-----+--------------------+----------+
-- | name  |  varchar(100) | YES  |     | 'no name provided' |          |
-- | age   |  int(11)      | YES  |     | 99                 |          |
-- +-------+---------------+------+-----+--------------------+----------+
CREATE TABLE dogs(
    name VARCHAR(10) DEFAULT 'No name entered',
    age INT DEFAULT 1
);
-- When we insert into this table we can provide no values, and default values.
-- Since we are not specifying NO NULL then any values we do not provide will default to NULL in the column for that row
INSERT INTO dogs(age) VALUES (3), (6);
DESC dogs;
or
SELECT * FROM dogs;
-- +-------------------+--------------+
-- | name(varchar(10)) | age(int(11)) |
-- +-------------------+--------------+
-- | no name entered  |            3 |
-- | no name entered  |            6 |
-- +-------------------+--------------+

-- If we specify NO NULL for name, then when we attempt to put NULL values we will receive an error


/***
 *    ______     _                              _   __
 *    | ___ \   (_)                            | | / /
 *    | |_/ / __ _ _ __ ___   __ _ _ __ _   _  | |/ /  ___ _   _ ___
 *    |  __/ '__| | '_ ` _ \ / _` | '__| | | | |    \ / _ \ | | / __|
 *    | |  | |  | | | | | | | (_| | |  | |_| | | |\  \  __/ |_| \__ \
 *    \_|  |_|  |_|_| |_| |_|\__,_|_|   \__, | \_| \_/\___|\__, |___/
 *                                       __/ |              __/ |
 *                                      |___/              |___/
 * Primary key - A Unique Identifier
 /
-- When dealing with data/tables we need to make sure that our rows can be identified
-- This means assigning primary keys so that our data can be retrieved
-- When creating a table with a primary key, you will need to pass the column that will be the primary key
 */
 CREATE TABLE dogs(
    dog_id INT NOT NULL,
    name VARCHAR(10) DEFAULT 'No name entered',
    age INT DEFAULT 1,
    PRIMARY KEY (dog_id)
);
or
 CREATE TABLE dogs(
    dog_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(10) DEFAULT 'No name entered',
    age INT DEFAULT 1
);

-- This will create a table like the following below
-- +--------+---------------+------+-----+--------------------+----------+
-- | FIELD  |     TYPE      | NULL | KEY |      DEFAULT       | EXTRA    |
-- +--------+---------------+------+-----+--------------------+----------+
-- | dog_id |  int          | NO   | PRI |                    |          |
-- | name   |  varchar(100) | YES  |     | 'no name provided' |          |
-- | age    |  int(11)      | YES  |     | 1                  |          |
-- +--------+---------------+------+-----+--------------------+----------+
-- As you will see dog_id will have the key coloumn set as primary
INSERT INTO dogs(dog_id, name, age) VALUES (1,'blue',3), (2,'jojo',6);
-- +--------+-------------------+--------------+
-- | dog_id | name(varchar(10)) | age(int(11)) |
-- +--------+-------------------+--------------+
-- |      1 | blue              |            3 |
-- |      2 | jojo              |            6 |
-- +--------+-------------------+--------------+
-- However, we may not want to manually assign ID's for each row as we can possible forget what id the last row was
-- Instead when we create the table we can assign a random unique id or generate/increment the id
 CREATE TABLE dogs(
    dog_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(10) DEFAULT 'No name entered',
    age INT DEFAULT 1,
    PRIMARY KEY (dog_id)
);
-- You can also do the following to set dog_id as primary
 CREATE TABLE dogs(
    dog_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(10) DEFAULT 'No name entered',
    age INT DEFAULT 1
);
-- Now our dog_id field will contain auto increment as an extra property on the table
-- +--------+---------------+------+-----+--------------------+----------------+
-- | FIELD  |     TYPE      | NULL | KEY |      DEFAULT       |    EXTRA       |
-- +--------+---------------+------+-----+--------------------+----------------+
-- | dog_id |  int          | NO   | PRI |                    | AUTO_INCREMENT |
-- | name   |  varchar(100) | YES  |     | 'no name provided' |                |
-- | age    |  int(11)      | YES  |     | 1                  |                |
-- +--------+---------------+------+-----+--------------------+----------------+
INSERT INTO dogs(name, age) VALUES ('blue',3), ('jojo',6);
-- Now we can provide name and age without having to worry about the id being assigned
-- +--------+-------------------+--------------+
-- | dog_id | name(varchar(10)) | age(int(11)) |
-- +--------+-------------------+--------------+
-- |      1 | blue              |            3 |
-- |      2 | jojo              |            6 |
-- +--------+-------------------+--------------+


/***
 *              _____                    _____                    _____                    _____
 *             /\    \                  /\    \                  /\    \                  /\    \
 *            /::\    \                /::\    \                /::\____\                /::\    \
 *           /::::\    \              /::::\    \              /:::/    /               /::::\    \
 *          /::::::\    \            /::::::\    \            /:::/    /               /::::::\    \
 *         /:::/\:::\    \          /:::/\:::\    \          /:::/    /               /:::/\:::\    \
 *        /:::/  \:::\    \        /:::/__\:::\    \        /:::/    /               /:::/  \:::\    \
 *       /:::/    \:::\    \      /::::\   \:::\    \      /:::/    /               /:::/    \:::\    \
 *      /:::/    / \:::\    \    /::::::\   \:::\    \    /:::/    /      _____    /:::/    / \:::\    \
 *     /:::/    /   \:::\    \  /:::/\:::\   \:::\____\  /:::/____/      /\    \  /:::/    /   \:::\ ___\
 *    /:::/____/     \:::\____\/:::/  \:::\   \:::|    ||:::|    /      /::\____\/:::/____/     \:::|    |
 *    \:::\    \      \::/    /\::/   |::::\  /:::|____||:::|____\     /:::/    /\:::\    \     /:::|____|
 *     \:::\    \      \/____/  \/____|:::::\/:::/    /  \:::\    \   /:::/    /  \:::\    \   /:::/    /
 *      \:::\    \                    |:::::::::/    /    \:::\    \ /:::/    /    \:::\    \ /:::/    /
 *       \:::\    \                   |::|\::::/    /      \:::\    /:::/    /      \:::\    /:::/    /
 *        \:::\    \                  |::| \::/____/        \:::\__/:::/    /        \:::\  /:::/    /
 *         \:::\    \                 |::|  ~|               \::::::::/    /          \:::\/:::/    /
 *          \:::\    \                |::|   |                \::::::/    /            \::::::/    /
 *           \:::\____\               \::|   |                 \::::/    /              \::::/    /
 *            \::/    /                \:|   |                  \::/____/                \::/____/
 *             \/____/                  \|___|                   ~~                       ~~
 *
                                         Create Read Update Delete
 - Create something in the table
    - INSERT INTO (column_name) VALUES(data_value)
 - Read something in the table
    - SELECT *(all columns) or column_name1, column_name2 FROM table_name
    - WHERE Clause -> Allows us to specify or set conditions
    - Aliases -> Can be used to set a column name to an alias we want, or re-lable the column when we query
        - example: SELECT cat_id AS id, name FROM cats;
        - Our query will print our table with cat_id as id
 - Update something in the table
    - UPDATE table_name SET column_name='value' WHERE colmun_name='value';
    - SET updates the column values for when the WHERE condition is met
    - We can select columns from the table and then attempt to update them as well
        - example:
        - SELECT * FROM cats WHERE name='Kitty'; -> Returns table with only one row
        - UPDATE cats SET name='Katz' WHERE name='Kitty'; -> Updates the row, so column name with value Kitty is updated to Katz
 - Delete something in the table
    - DELETE FROM table_name WHERE column_name='value';
    - DELETE FROM table_name; -> removes all data from table
 */


/***
 *     ______     ______     __  __     _____        ______     __  __     ______     __         __         ______     __   __     ______     ______     ______
 *    /\  ___\   /\  == \   /\ \/\ \   /\  __-.     /\  ___\   /\ \_\ \   /\  __ \   /\ \       /\ \       /\  ___\   /\ "-.\ \   /\  ___\   /\  ___\   /\  ___\
 *    \ \ \____  \ \  __<   \ \ \_\ \  \ \ \/\ \    \ \ \____  \ \  __ \  \ \  __ \  \ \ \____  \ \ \____  \ \  __\   \ \ \-.  \  \ \ \__ \  \ \  __\   \ \___  \
 *     \ \_____\  \ \_\ \_\  \ \_____\  \ \____-     \ \_____\  \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_\\"\_\  \ \_____\  \ \_____\  \/\_____\
 *      \/_____/   \/_/ /_/   \/_____/   \/____/      \/_____/   \/_/\/_/   \/_/\/_/   \/_____/   \/_____/   \/_____/   \/_/ \/_/   \/_____/   \/_____/   \/_____/
 *
 */

--  Closet Inventory
--  New DB shirts_db
--  New table shirts
-- shirt_id not null prim, article text, color text, shirt_size text, last_worn int
-- seed data
-- insert 1 purple medium last worn 50 days ago
-- Select all shirts but print article and color
-- select all medium shirts
-- updata all polo shirts to be size L
-- update the shirt last worn 15 days ago change last_warn to 0
-- Update all white shirts change size to xs and color to off white
-- Delete all old shirts last warn 200 days ago
-- Delete all tank tops
-- Delete all shirts
-- Drop table



-- Loading data from file source file_name.sql or from postgres cli -> \i filepath\file_name.sql



/***
 *     ________  _________  ________  ___  ________   ________         ________ ___  ___  ________   ________ _________  ___  ________  ________   ________
 *    |\   ____\|\___   ___\\   __  \|\  \|\   ___  \|\   ____\       |\  _____\\  \|\  \|\   ___  \|\   ____\\___   ___\\  \|\   __  \|\   ___  \|\   ____\
 *    \ \  \___|\|___ \  \_\ \  \|\  \ \  \ \  \\ \  \ \  \___|       \ \  \__/\ \  \\\  \ \  \\ \  \ \  \___\|___ \  \_\ \  \ \  \|\  \ \  \\ \  \ \  \___|_
 *     \ \_____  \   \ \  \ \ \   _  _\ \  \ \  \\ \  \ \  \  ___      \ \   __\\ \  \\\  \ \  \\ \  \ \  \       \ \  \ \ \  \ \  \\\  \ \  \\ \  \ \_____  \
 *      \|____|\  \   \ \  \ \ \  \\  \\ \  \ \  \\ \  \ \  \|\  \      \ \  \_| \ \  \\\  \ \  \\ \  \ \  \____   \ \  \ \ \  \ \  \\\  \ \  \\ \  \|____|\  \
 *        ____\_\  \   \ \__\ \ \__\\ _\\ \__\ \__\\ \__\ \_______\      \ \__\   \ \_______\ \__\\ \__\ \_______\  \ \__\ \ \__\ \_______\ \__\\ \__\____\_\  \
 *       |\_________\   \|__|  \|__|\|__|\|__|\|__| \|__|\|_______|       \|__|    \|_______|\|__| \|__|\|_______|   \|__|  \|__|\|_______|\|__| \|__|\_________\
 *       \|_________|                                                                                                                                 \|_________|
 *
 *  -- String functions allow us to work and manipulate string values from specific columns
 */

--  CONCAT -> Combines two or strings. CONCAT(column_name1, 'text', column_name2)
SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

--  CONCAT_WS -> Combines two or strings with a seperator between strings. CONCAT(column_name1, 'text', column_name2)


