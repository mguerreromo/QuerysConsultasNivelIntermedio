USE 
AdventureWorks2019
GO


/*Consulta de Clientes y Órdenes:
Encuentra una lista de clientes junto con el número total de órdenes que han 
realizado.
*/

SELECT
	[cust].[CustomerID]
,	COUNT([Soh].SalesOrderID) AS [TotalOrden]
FROM
	[Sales].[Customer] AS [cust]
	INNER JOIN [Sales].[SalesOrderHeader] AS [Soh]
	ON [cust].[CustomerID] = [Soh].[CustomerID]
GROUP BY 
	[cust].[CustomerID]
