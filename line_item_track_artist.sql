SELECT il.InvoiceId as 'Invoice ID', il.InvoiceLineId as 'Invoice Line ID', t.Name as "Track Name", ar.Name as "Artist Name"
FROM InvoiceLine il
JOIN Track t
ON il.TrackId = t.TrackId
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN Artist ar
ON a.ArtistId = ar.ArtistId