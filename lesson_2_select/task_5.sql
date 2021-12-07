SELECT TOP 10 o.*, c.CustomerName, p.FullName SalesPersonName
FROM Sales.Orders o
INNER JOIN Sales.Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Application.People p ON o.SalespersonPersonID = p.PersonID
ORDER BY o.OrderDate DESC;