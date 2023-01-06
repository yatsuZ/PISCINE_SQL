SELECT InvoiceId FROM invoice_items
WHERE invoice_items.TrackId IN (
SELECT TrackId FROM tracks
GROUP BY GenreId
ORDER BY MAX(Milliseconds) AND GenreId
)
GROUP BY InvoiceId

