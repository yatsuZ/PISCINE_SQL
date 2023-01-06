SELECT FirstName, LastName, Company, Total AS InvoiceTotalPrice 
FROM customers
JOIN invoices ON invoices.CustomerId = customers.CustomerId
WHERE Company IS NOT NULL