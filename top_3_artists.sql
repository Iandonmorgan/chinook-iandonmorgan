SELECT a.Name as 'Artist Name', SUM(t.TrackId) as 'Total Tracks Sold'
FROM Invoice i
JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
JOIN Album al
ON al.AlbumId = t.AlbumId
JOIN Artist a
ON al.ArtistId = a.ArtistId
GROUP BY a.ArtistId
ORDER BY SUM(t.TrackId) DESC
LIMIT 3