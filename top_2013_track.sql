SELECT t.Name as 'Track Name', SUM(t.TrackId) as 'Total Tracks Sold 2013'
FROM Invoice i
JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
WHERE STRFTIME('%Y',i.InvoiceDate) = '2013'
GROUP BY t.TrackId
ORDER BY SUM(t.TrackId) DESC
LIMIT 1

-- interested to see how else this can be pulled, and whether I should be including price in this thinking or if "most purchased" disregards price and is only concerned about quantity.