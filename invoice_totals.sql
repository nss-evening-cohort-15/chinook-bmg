-- Provide a query that shows the Invoice Total, 
-- Customer name, Country and Sale Agent name for 
-- all invoices and customers.


SELECT * FROM Invoice;

SELECT Employee.FirstName, Employee.LastName, Employee.Title, Customer.FirstName, Customer.LastName, Invoice.BillingCountry, Invoice.Total FROM Invoice 
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Employee.Title = 'Sales Support Agent'; 

