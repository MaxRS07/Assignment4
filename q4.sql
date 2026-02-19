-- (10 pts) Which states have more than 10 unique customers?

SELECT customers.State 
FROM customers 
GROUP BY customers.State 
HAVING COUNT(*) >  10