USE
AdventureWorks2019
GO

/*
Consulta de Órdenes Recientes:
Encuentra las órdenes realizadas en los últimos 3 meses, incluyendo detalles de 
los clientes y productos comprados.*/SELECT 	[soh].[CustomerID],	[prod].NameFROM 	[Sales].[SalesOrderHeader] AS [soh]	INNER JOIN [Sales].[SalesOrderDetail] AS [sod]	ON [soh].[SalesOrderID] = [sod].[SalesOrderID]	INNER JOIN [Production].[Product] AS [prod]	ON [prod].[ProductID] = [sod].ProductIDWHERE	soh.OrderDate >= DATEADD(MONTH, -3, GETDATE())