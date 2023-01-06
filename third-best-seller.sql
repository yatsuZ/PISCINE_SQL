SELECT employees.LastName || ' ' || employees.FirstName AS '3rd best seller' FROM employees
JOIN customers ON customers.SupportRepId = employees.EmployeeId
GROUP BY EmployeeId
ORDER BY count(customers.SupportRepId)
LIMIT 1