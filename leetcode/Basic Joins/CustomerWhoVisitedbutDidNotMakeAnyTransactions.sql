
-- select only customer_id because we only want to show that , new column with count all unique
SELECT customer_id, COUNT(*) AS count_no_trans 
FROM Visits v
LEFT JOIN Transactions t -- because on left join we get all customer id not matter of visit 
ON v.visit_id = t.visit_id -- join condition 
WHERE transaction_id is NULL -- only the null because if they visit and not do any trans then trans_id should be null
GROUP BY customer_id -- this helps count only count what's passed in group by  