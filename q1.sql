SELECT DISTINCT customers.LastName, customers.Email FROM 
customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId