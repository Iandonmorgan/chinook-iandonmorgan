SELECT STRFTIME('%Y',i.InvoiceDate) as Year, COUNT(i.InvoiceId) 'Total Invoices'
FROM Invoice i
WHERE Year = '2009' or Year = '2011'
GROUP BY Year