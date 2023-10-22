USE
AdventureWorks2019
GO

/*
Consulta de Ventas Totales por Categor�a:
Calcula las ventas totales para cada categor�a de productos.
*/

SELECT 
	[cat].Name
,	SUM([sod].OrderQty * [sod].UnitPrice) AS [Monto Total $]

FROM
	[Production].[Product] AS [p]
	INNER JOIN
		[Production].[ProductSubcategory] AS [sp]
	ON [sp].[ProductSubcategoryID] = [p].ProductSubcategoryID
	INNER JOIN 
		[Production].[ProductCategory] AS [cat]
	ON [cat].[ProductCategoryID] = [sp].ProductCategoryID
	INNER JOIN
		[Sales].[SalesOrderDetail] AS [sod]
	ON [sod].[ProductID] = [p].[ProductID]
GROUP BY [cat].Name
