/*
SQL LENGTH() – Simple Notes

What does LENGTH() do?
- LENGTH() returns the number of characters (bytes) in a string.
- It tells you how long a text value is.

Note:
- In MySQL, LENGTH() returns the **number of bytes**, not characters.
  (So for multibyte characters like emojis or Unicode, it may count more than 1 per character.)

For actual character count (not bytes), use: CHAR_LENGTH()

--------------------------------------------------

Example Table: customer

| customer_id | first_name |
|-------------|------------|
| 1           | Alice      |
| 2           | Bob        |
| 3           | Elizabeth  |

--------------------------------------------------

Query:
SELECT first_name, LENGTH(first_name) AS name_length
FROM customer;

Output:

| first_name | name_length |
|------------|-------------|
| Alice      | 5           |
| Bob        | 3           |
| Elizabeth  | 9           |

--------------------------------------------------

Use Cases:
- Find the longest or shortest names
- Filter rows by text length:
  → WHERE LENGTH(name) > 5

Tip:
- Use CHAR_LENGTH() if you're working with Unicode or non-English text

*/
