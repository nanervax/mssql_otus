SELECT DISTINCT c.CustomerID, c.CustomerName, c.PhoneNumber 
FROM Sales.Orders o
INNER JOIN (
	SELECT DISTINCT ol.OrderID
	FROM Sales.OrderLines ol
	INNER JOIN Warehouse.StockItems si ON ol.StockItemID = si.StockItemID
	WHERE si.StockItemName = 'Chocolate frogs 250g'
) inner_q ON o.OrderID = inner_q.OrderID
INNER JOIN Sales.Customers c ON o.CustomerID = c.CustomerID;