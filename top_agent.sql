SELECT (e.FirstName || ' ' || e.LastName) as 'Agent Name', ROUND(SUM(i.Total),2) as 'Total Sales'
FROM Employee e
LEFT JOIN Customer c
ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId
ORDER BY ROUND(SUM(i.Total),2) DESC
LIMIT 1