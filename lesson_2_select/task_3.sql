SELECT o.* 
FROM Sales.Orders o
INNER JOIN (
	SELECT DISTINCT ol.OrderID FROM Sales.OrderLines ol
	WHERE ol.PickingCompletedWhen is not NULL AND (ol.UnitPrice > 100 OR ol.Quantity > 20)
) inner_q ON o.OrderID = inner_q.OrderID;