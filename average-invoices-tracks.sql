SELECT 
	invoice_items.InvoiceId,  
	round(avg(invoice_items.UnitPrice),2) AS 'Average Price', 
	round(sum(tracks.Milliseconds)/1000) AS 'Track Total Time', 
	(round(round(avg(invoice_items.UnitPrice),2)/round(sum(tracks.Milliseconds)/1000),5))
	 || '€' AS 'Price by second' 
	FROM invoice_items
JOIN tracks ON tracks.TrackId = invoice_items.TrackId 
GROUP BY invoice_items.InvoiceId