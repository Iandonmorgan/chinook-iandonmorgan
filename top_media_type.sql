SELECT mt.Name as 'Media Type', SUM(il.Quantity) as 'Total Tracks Sold'
FROM Invoice i
JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
JOIN MediaType mt
ON mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.MediaTypeId
ORDER BY SUM(il.Quantity) DESC
LIMIT 1