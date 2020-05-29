SELECT i.InvoiceId, i.Total, c.FirstName as Customer_FirstName, c.LastName as Customer_LastName, i.BillingCountry, e.FirstName as Agent_FirstName, e.LastName as Agent_LastName
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent'