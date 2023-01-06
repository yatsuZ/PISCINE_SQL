SELECT customers.FirstName || ' ' || upper(customers.LastName) AS 'FullName', sum(Total) AS 'AllInvoices' FROM customers
JOIN invoices ON invoices.CustomerId = customers.CustomerId
GROUP BY customers.CustomerId
HAVING SUM(total) > 38
ORDER BY FirstName