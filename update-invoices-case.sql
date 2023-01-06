UPDATE invoices
SET Total = (
	CASE
		WHEN invoices.BillingCountry IS 'France' THEN invoices.Total + 3
		WHEN invoices.BillingCountry IS 'USA' THEN invoices.Total + 5
		ELSE invoices.Total + 1
	END
)
