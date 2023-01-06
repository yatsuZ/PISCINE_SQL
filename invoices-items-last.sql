SELECT Name FROM invoice_items
INNER JOIN tracks ON invoice_items."TrackId" = tracks."TrackId"
WHERE InvoiceId = (
	SELECT InvoiceId FROM invoices 
	ORDER BY InvoiceDate DESc 
	LIMIT 1)
	
