SELECT i.*, COUNT(il.InvoiceLineId) as 'Total Invoice Line Items'
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
GROUP BY il.InvoiceId