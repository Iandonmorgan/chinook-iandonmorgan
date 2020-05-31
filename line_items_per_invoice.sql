SELECT InvoiceId as 'Invoice ID', COUNT(i.InvoiceId) as 'Number of'
FROM InvoiceLine i
GROUP BY InvoiceId