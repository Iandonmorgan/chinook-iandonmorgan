SELECT t.Name as 'Track Name', SUM(il.Quantity) as 'Total Tracks Sold 2013'
FROM Invoice i
JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY SUM(il.Quantity) DESC
LIMIT 5