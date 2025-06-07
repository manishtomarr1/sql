/*
We don’t need the column names to be the same — only the values must match.

Syntax for joining tables from two databases:
SELECT db1.table1.column1, db2.table2.column2
FROM db1.table1
JOIN db2.table2
ON db1.table1.matching_column = db2.table2.matching_column;

Simple Example:
Database 1: school
Table: students
Columns: student_id, name

Database 2: library
Table: book_issues
Columns: issued_to, book_title

Query to join them:
SELECT students.name, book_issues.book_title
FROM school.students
JOIN library.book_issues
ON students.student_id = book_issues.issued_to;

This shows student names with the books they were issued,
matching students.student_id with book_issues.issued_to.
*/
