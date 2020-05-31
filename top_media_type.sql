SELECT mt.Name as 'Media Type', SUM(t.TrackId) as 'Total Tracks Sold'
FROM Invoice i
JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
JOIN MediaType mt
ON mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.MediaTypeId
ORDER BY SUM(t.TrackId) DESC
LIMIT 1