SELECT      
      CONCAT([FirstName], ' ',ISNULL([MiddleName],''),' ' ,[LastName])
  FROM [AdventureWorks2019].[Person].[Person]
  
