USE
AdventureWorks2019
GO

/*
Consulta de Clientes Inactivos:
Encuentra clientes que no han realizado una compra en los últimos 6 meses.
*/

SET DATEFORMAT DMY;

SELECT
	[CustomerID]
,	SUM([TotalDue])	AS [TotalDue]

FROM
	[Sales].[SalesOrderHeader]

WHERE
	[OrderDate] >= (SELECT 
						DATEADD(MONTH, -6,MAX(ORDERDATE)) 
					FROM 
						[Sales].[SalesOrderHeader])
						AND CustomerID = 11000
GROUP BY
	[CustomerID]
ORDER BY
	CustomerID ASC
