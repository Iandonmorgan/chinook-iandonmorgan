SELECT i.InvoiceId, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total, e.FirstName as Agent_FirstName, e.LastName as Agent_LastName
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent'