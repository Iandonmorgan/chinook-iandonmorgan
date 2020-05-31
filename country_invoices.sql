SELECT i.BillingCountry as Country, COUNT(i.BillingCountry) as 'Total Invoices per Country'
FROM Invoice i
GROUP BY i.BillingCountry