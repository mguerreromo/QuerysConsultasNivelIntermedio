USE
AdventureWorks2019
GO

/*
Consulta de Empleados con Mayor Antigüedad:
Encuentra los 5 empleados con más tiempo en la empresa.*/SELECT TOP 5 [emp].[HireDate],	CONCAT([pp].[FirstName], ' ' , [pp].[LastName]) AS [Employee],	DATEDIFF(YEAR, [emp].[HireDate], GETDATE()) AS [YearInCompany]FROM	[Person].[Person] AS [pp]	INNER JOIN		[HumanResources].[Employee] AS [emp]	ON [PP].BusinessEntityID = [emp].BusinessEntityIDORDER BY	[emp].[HireDate] ASC