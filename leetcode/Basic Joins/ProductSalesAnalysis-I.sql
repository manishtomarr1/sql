/*
Approach:

We are using INNER JOIN to combine data from the Sales and Product tables.

1. INNER JOIN only returns rows where there is a match in both tables.
2. We match rows from Sales and Product where Sales.product_id = Product.product_id.
3. For each matching row, we get the product_name from Product, and year and price from Sales.
4. If a product has no sales (like Samsung), it won't appear in the result because there is no matching row in the Sales table.

This is why only Nokia and Apple appear in the final output — they have matching sales records.
*/

SELECT product_name, year, price 
FROM Sales 
JOIN Product 
ON Sales.product_id = Product.product_id;