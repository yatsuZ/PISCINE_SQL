SELECT FirstName, LastName, Country, 
	CASE
		WHEN Country IS 'Chile' OR Country IS 'USA' OR Country IS 'Canada' OR Country IS 'Argentina' OR Country IS 'Brazil' THEN 'America'
		WHEN Country IS 'United Kingdom' OR Country IS 'Sweden' OR Country IS 'Spain' OR Country IS 'Poland' OR Country IS 'Netherlands' OR Country IS 'Italy' OR Country IS 'Ireland' OR Country IS 'Hungary' OR Country IS 'Finland' OR Country IS 'France' OR Country IS 'Portugal' OR Country IS 'Denmark' OR Country IS 'Belgium' OR Country IS 'Austria' OR Country IS 'Czech Republic' OR Country IS 'Norway' OR Country IS 'Germany' THEN 'Europe'
		WHEN Country IS 'Australia' THEN 'Oceania'
		WHEN Country IS 'India' THEN 'Asia'
	END AS	'Continent'
FROM customers
