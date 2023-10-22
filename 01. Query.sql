USE
AdventureWorks2019
GO

/*
Consulta de Productos por Categoría:
o Recupera una lista de productos junto con sus nombres y números de producto 
para una categoría específica, como "Bicicletas".
*/

SELECT
	[prod].[Name]
,	[prod].[ProductID]
,	[cat].[Name]
FROM
	[Production].[Product] AS [prod]
	INNER JOIN [Production].[ProductSubcategory] AS [subcat]
	ON [prod].[ProductSubcategoryID] = [subcat].[ProductSubcategoryID]
	INNER JOIN [Production].[ProductCategory] AS [cat]
	ON [subcat].[ProductCategoryID] = [cat].[ProductCategoryID]
