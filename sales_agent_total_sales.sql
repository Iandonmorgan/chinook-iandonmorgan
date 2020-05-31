SELECT (e.FirstName || ' ' || e.LastName) as 'Agent Name', ROUND(SUM(i.Total),2) as 'Total Sales'
FROM Employee e
LEFT JOIN Customer c
ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId

-- this does return a rounded decimal number, would be interested to see how to always return it as a 2 decimal number.