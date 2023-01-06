SELECT FirstName, LastName, AVG(Total) AS InvoicesAverage FROM customers
JOIN invoices ON invoices.CustomerId = customers.CustomerId
GROUP BY invoices.CustomerId
ORDER BY FirstName