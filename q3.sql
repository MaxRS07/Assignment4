SELECT COUNT(*) as NumberOfCustomers, customers.State
FROM customers 
WHERE customers.State IS NOT NULL
GROUP BY customers.State 
ORDER BY customers.State ASC