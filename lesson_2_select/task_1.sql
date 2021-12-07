SELECT si.*
  FROM Warehouse.StockItems si
  WHERE si.StockItemName like '%urgent%' OR si.StockItemName like 'Animal%';