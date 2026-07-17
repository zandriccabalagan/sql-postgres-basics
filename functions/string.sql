/*
	String Functions
	- Manipulation -> CONCAT, UPPER, LOWER, TRIM, REPLACE
	- Calculation -> LEN/LENGTH
	- String Extraction -> LEFT, RIGHT, SUBSTRING

	Function Definitions
	CONCAT -> Combine multiple string into one
	UPPER  -> Converts all characters to uppercase
	LOWER  -> Converts all characters to lowercase
	TRIM   -> Removes leading and trailling spaces
	REPLACE-> Replaces specific character with a new character
	LENGTH -> Counts how many characters(Any data type)
	LEFT   -> Extracts specific numbers of characters from start
	RIGHT  -> Extracts specific numbers of characters from end
	SUBSTRING -> Extracts a part of string at specifed position
*/

-- CONCAT, LOWER, UPPER FUNCTION
-- Show a list of customer's first names together with their country in one column.
-- Transfrom the customer's first name to lowercase
-- Transfrom the customer's first name to uppercase
SELECT 
first_name,
country,
CONCAT(first_name,' -  ', country) AS name_country,
LOWER(first_name) AS low_name,
UPPER(first_name) AS up_name,
FROM customers;

-- TRIM, LENGTH/LEN FUNCTION
-- Find customers whose first name contains leading or trailing spaces
SELECT 
	first_name,
	LENGTH(first_name) let_name,
	LENGTH (TRIM(first_name)) let_trim_name
FROM customers
WHERE first_name != TRIM(first_name);

-- REPLACE FUNCTION
-- Removes dashes (-) from a phone number
SELECT 
	'123-456-789' AS phone,
	REPLACE('123-456-7890', '-', '') AS clean_phone;
-- Replace File Extence from txt to csv
SELECT 
	'report.txt' AS file_name,
	REPLACE('report.txt', '.txt', '.csv') AS new_file_name;

-- LEFT, RIGHT, TRIM FUNCTION
-- Retrieve the first two characters of each first name.
-- Retrieve the last two characters of each first name.
SELECT 
	first_name,
	LEFT(TRIM(first_name), 2) first_2_char,
	RIGHT(first_name, 2) last_2_char
FROM customers;

-- SUBSTRING FUNCTION
-- Retrieve a list of customer's first names after removing the first character.
SELECT 
	first_name,
	SUBSTRING(TRIM(first_name), 2, LENGTH(first_name)) AS extracted_string
FROM customers;
