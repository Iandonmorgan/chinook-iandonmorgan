SELECT t.Name as 'Track Name', SUM(t.TrackId) as 'Total Tracks Sold'
FROM Invoice i
JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
GROUP BY t.TrackId
ORDER BY SUM(t.TrackId) DESC
LIMIT 5