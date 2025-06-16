USE sql_hr;
SELECT *
FROM employees AS e
WHERE salary > (
        SELECT AVG(salary)
        FROM employees
        WHERE office_id = e.office_id 
            -- For each row in the main query, this subquery calculates the average salary of employees in the same office (matching office_id). 
            -- Then it compares the current employee's salary to that office's average. 
            -- This process repeats for every employee in the main query.
    )