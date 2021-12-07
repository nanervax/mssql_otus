SELECT s.*  
FROM Purchasing.Suppliers s
LEFT OUTER JOIN Purchasing.PurchaseOrders po ON po.SupplierID = s.SupplierID
WHERE po.SupplierID is NULL;


SELECT s.* 
FROM Purchasing.Suppliers s
WHERE s.SupplierID NOT IN (
	SELECT DISTINCT po.SupplierID FROM Purchasing.PurchaseOrders po
);