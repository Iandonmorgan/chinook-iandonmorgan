SELECT i.InvoiceId, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total, (e.FirstName || ' ' || e.LastName) as 'Agent Name'
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent'