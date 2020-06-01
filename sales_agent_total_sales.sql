SELECT (e.FirstName || ' ' || e.LastName) as 'Agent Name', printf("%.2f",SUM(i.Total)) as 'Total Sales'
FROM Employee e
LEFT JOIN Customer c
ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId