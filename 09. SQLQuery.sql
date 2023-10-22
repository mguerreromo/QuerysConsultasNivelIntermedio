USE
AdventureWorks2019
GO

/*
Consulta de Ventas Mensuales:
Calcula las ventas totales para cada mes del último año.
*/

SELECT
	CASE
		WHEN DATEPART(MONTH,[OrderDate]) = 1 THEN 'ENERO'
		WHEN DATEPART(MONTH,[OrderDate]) = 2 THEN 'FEBRERO'
		WHEN DATEPART(MONTH,[OrderDate]) = 3 THEN 'MARZO'
		WHEN DATEPART(MONTH,[OrderDate]) = 4 THEN 'ABRIL'
		WHEN DATEPART(MONTH,[OrderDate]) = 5 THEN 'MAYO'
		WHEN DATEPART(MONTH,[OrderDate]) = 6 THEN 'JUNIO'
		WHEN DATEPART(MONTH,[OrderDate]) = 7 THEN 'JULIO'
		WHEN DATEPART(MONTH,[OrderDate]) = 8 THEN 'AGOSTO'
		WHEN DATEPART(MONTH,[OrderDate]) = 9 THEN 'SEPTIEMBRE'
		WHEN DATEPART(MONTH,[OrderDate]) = 10 THEN 'OCTUBRE'
		WHEN DATEPART(MONTH,[OrderDate]) = 11 THEN 'NOVIEMBRE'
		WHEN DATEPART(MONTH,[OrderDate]) = 12 THEN 'DICIEMBRE'
	END AS [Meses]
,	SUM([soD].[UnitPrice] * [sod].[OrderQty]) AS [MontoTotal]
, max(YEAR(OrderDate))
FROM
	[Sales].[SalesOrderHeader] AS [soh] 
	INNER JOIN 
		[Sales].[SalesOrderDetail] AS [sod]
	ON [sod].[SalesOrderID] = [soh].[SalesOrderID]
GROUP BY
	MONTH(OrderDate)
ORDER BY
	MONTH(OrderDate)