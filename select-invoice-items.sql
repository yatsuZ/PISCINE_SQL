SELECT InvoiceId, tracks.Name AS InvoiceItem, invoice_items.UnitPrice 
FROM invoice_items
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
WHERE invoice_items.InvoiceId = '10'
ORDER BY tracks.Name