SELECT 
	year(o.OrderDate) Year, 
	month(o.OrderDate) Month
FROM Sales.OrderLines ol
INNER JOIN Sales.Orders o ON ol.OrderID = o.OrderID
GROUP BY year(o.OrderDate), month(o.OrderDate)
HAVING SUM(ol.UnitPrice * ol.Quantity) > 10000;