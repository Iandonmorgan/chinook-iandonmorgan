SELECT (FirstName || ' ' || LastName) as 'Full Name', CustomerId, Country
FROM Customer c
WHERE c.Country != 'USA'