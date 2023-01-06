SELECT employees.FirstName || ' ' || upper(employees.LastName) AS 'FullName', count(customers.SupportRepId) AS 'NumberOfCustomers' FROM employees
JOIN customers ON customers.SupportRepId = employees.EmployeeId
WHERE Title IS 'Sales Support Agent'
GROUP BY EmployeeId
ORDER BY count(customers.SupportRepId)
