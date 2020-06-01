SELECT (e.FirstName || ' ' || e.LastName) as 'Agent Name', ROUND(SUM(i.Total),2) as 'Total Sales'
FROM Employee e
LEFT JOIN Customer c
ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE STRFTIME('%Y',i.InvoiceDate) = '2009'
GROUP BY e.EmployeeId
ORDER BY ROUND(SUM(i.Total),2) DESC
LIMIT 1;

-- The below query yields the same result, using MAX subquery.

SELECT x.'Agent Name' AS 'Sales Agent', MAX(x.'Total Sales') AS 'Top 2009 Sales'
FROM
(SELECT (e.FirstName || ' ' || e.LastName) as 'Agent Name', ROUND(SUM(i.Total),2) as 'Total Sales'
	FROM Employee e
	LEFT JOIN Customer c
	ON e.EmployeeId = c.SupportRepId
	LEFT JOIN Invoice i
	ON c.CustomerId = i.CustomerId
	WHERE STRFTIME('%Y',i.InvoiceDate) = '2009'
	GROUP BY e.EmployeeId) x;