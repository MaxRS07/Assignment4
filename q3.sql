-- (10 pts) What are the total number of unique customers for each state, ordered alphabetically by state?

SELECT COUNT(*) as NumberOfCustomers, customers.State
FROM customers 
WHERE customers.State IS NOT NULL
GROUP BY customers.State 
ORDER BY customers.State ASC