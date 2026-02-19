-- CUSTOM QUERY: names of customers who spent at least $100 on phonk music
-- The results are a list of first and last names of customers who have spent at least $100 on tracks that belong to the "Brazilian Music" genre

SELECT customers.FirstName, customers.LastName
FROM customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
INNER JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
INNER JOIN tracks ON tracks.TrackId = invoice_items.TrackId
INNER JOIN genres ON genres.GenreId = tracks.GenreId
WHERE genres.Name LIKE "%Brazil%"
GROUP BY customers.CustomerId
HAVING TOTAL(invoice_items.UnitPrice * invoice_items.Quantity) > 100