/*
SELECT
    *
FROM
    table_name
    JOIN joining_table_name ON joining_condition
    JOIN another_table_name ON joining_condition
*/
SELECT
    --selecting all the tables need to display
    name.clients,
    payments.invoice_id,
    payments.date,
    payments.amount,
    payment_methods.name
FROM
    payments 
    --first table join
    JOIN clients ON payments.client_id = clients.id 
    --second table join
    JOIN payment_methods ON payment.payment_method = payment_method.id;