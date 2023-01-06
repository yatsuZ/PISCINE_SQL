
SELECT t.Country, SUM(t.Total) AS 'Total' FROM
(
	SELECT Country, count(Country) AS 'Total' FROM customers
	GROUP BY Country
	UNION ALL
	SELECT Country, count(Country) AS 'Total' FROM employees
	GROUP BY Country
	UNION ALL
	SELECT BillingCountry as 'Country', count(BillingCountry) AS 'Total' FROM invoices
	GROUP BY BillingCountry
) AS t
GROUP BY t.Country