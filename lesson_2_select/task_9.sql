SELECT 
	SUM(ol.UnitPrice * ol.Quantity) SumOfPrice, 
	SUM(ol.Quantity) SumOfQuantity,
	year(o.OrderDate) Year, 
	month(o.OrderDate) Month,
	MIN(o.OrderDate) FirstSaleDate
FROM Sales.OrderLines ol
INNER JOIN Sales.Orders o ON ol.OrderID = o.OrderID
GROUP BY year(o.OrderDate), month(o.OrderDate);