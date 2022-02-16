-- Provide a query that shows the invoices associated 
-- with each sales agent. The resultant table should 
-- include the Sales Agent's full name.

SELECT * FROM Invoice;

SELECT Employee.FirstName, Employee.LastName, Employee.Title, Invoice.* FROM Invoice 
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId 
WHERE Employee.Title = 'Sales Support Agent'; 

