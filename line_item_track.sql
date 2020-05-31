SELECT il.InvoiceId as 'Invoice ID', il.InvoiceLineId as 'Invoice Line ID', t.Name as "Track Name"
FROM InvoiceLine il
JOIN Track t
ON il.TrackId = t.TrackId