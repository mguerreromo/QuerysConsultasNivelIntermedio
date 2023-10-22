USE
AdventureWorks2019
GO
	
/*
Consulta de Inventario de Productos:
Muestra una lista de productos con su nombre y cantidad en stock actual.
*/

SELECT
	[p].[Name]
,	SUM([PI].[Quantity]) AS [STOCK]
FROM
	[Production].[Product] AS [p]
	INNER JOIN [Production].[ProductInventory] AS [pi]
	ON [P].[ProductID] = [pi].[ProductID]
GROUP BY 
	[P].[Name]