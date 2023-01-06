SELECT t.Country, SUM(t.Total) AS 'Total', t.Employees, SUM(t.Customers) AS 'Customers', SUM(t.Invoices) AS 'Invoices' FROM
(
	SELECT Country, count(Country) AS 'Total',
	count(Country) AS 'Employees',
	0 AS 'Customers',
	0 AS 'Invoices'
	FROM employees
	GROUP BY Country
	
	UNION ALL
	
	SELECT Country, count(Country) AS 'Total',
	0 AS 'Employees',
	count(Country) AS 'Customers',
	0 AS 'Invoices'
	FROM customers
	GROUP BY Country
	
	UNION ALL
	
	SELECT BillingCountry as 'Country', count(BillingCountry) AS 'Total',
	0 AS 'Employees',
	0 AS 'Customers',
	count(BillingCountry) AS 'Invoices'
	FROM invoices
	GROUP BY BillingCountry
	
) AS t
GROUP BY t.Country