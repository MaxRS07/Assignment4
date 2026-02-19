SELECT customers.State 
FROM customers 
GROUP BY customers.State 
HAVING COUNT(*) >  10