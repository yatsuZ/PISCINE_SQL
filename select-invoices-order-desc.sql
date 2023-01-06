SELECT * FROM invoices
WHERE BillingCity IS 'Paris' OR BillingCity IS 'Bordeaux' OR BillingCity IS 'Stuttgart'
ORDER BY  Total DESC