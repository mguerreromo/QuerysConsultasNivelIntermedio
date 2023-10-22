USE
AdventureWorks2019
GO

/*
Consulta de Clientes con Órdenes Grandes:
Muestra una lista de clientes que han realizado órdenes superiores a un cierto 
valor, junto con el total gastado.
*/

SELECT
	[soh].CustomerID
,	SUM([sod1].[UnitPrice] * [sod1].[OrderQty]) AS [Monto Total]
FROM
	[Sales].[SalesOrderDetail] AS [sod1]	
	INNER JOIN
		(
			SELECT
				[Sales].[SalesOrderDetail].[SalesOrderID]
			,	AVG(OrderQty * UnitPrice) AS [AvgMontoTotal]
			FROM
				[Sales].[SalesOrderDetail]
			GROUP BY
				[SalesOrderID]) AS [sod2]
	ON [sod2].SalesOrderID = [sod1].SalesOrderID
	INNER JOIN
		[Sales].[SalesOrderHeader] AS [soh]
	ON [soh].[SalesOrderID] = [sod1].SalesOrderID
GROUP BY 
	[soh].CustomerID, AvgMontoTotal
HAVING 
	SUM([sod1].[UnitPrice] * [sod1].[OrderQty]) > AvgMontoTotal