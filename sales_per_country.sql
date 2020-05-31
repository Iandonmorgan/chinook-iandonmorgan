SELECT DISTINCT i.BillingCountry as 'Country', SUM(i.Total) as 'Total Sales'
FROM Invoice i
GROUP BY i.BillingCountry