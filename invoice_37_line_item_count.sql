SELECT COUNT(i.InvoiceId) as 'Invoice ID 37'
FROM InvoiceLine i
WHERE InvoiceId = 37
GROUP BY InvoiceId