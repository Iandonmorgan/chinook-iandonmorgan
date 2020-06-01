SELECT (e.FirstName || ' ' || e.LastName) as 'Agent Name', COUNT(c.SupportRepId) as 'Total Customers'
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId