SELECT po.* 
FROM Purchasing.PurchaseOrders po
INNER JOIN Application.DeliveryMethods dm ON po.DeliveryMethodID = dm.DeliveryMethodID
WHERE 
	po.IsOrderFinalized = 'true'
	AND (dm.DeliveryMethodName = 'Air Freight' OR dm.DeliveryMethodName = 'Refrigerated Air Freight')
	AND (year(po.ExpectedDeliveryDate) = 2013 AND month(po.ExpectedDeliveryDate) = 1);
