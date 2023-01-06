SELECT  emp.EmployeeId, emp.FirstName || ' ' || emp.LastName AS EmployeeName, emp2.FirstName || ' ' || emp2.LastName AS ReportsTo 
FROM employees AS 'emp'
LEFT OUTER JOIN employees as 'emp2' ON emp2.EmployeeId = emp.ReportsTo
