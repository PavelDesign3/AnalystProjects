-- DIM_Customers Table --
SELECT [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName]
      --,[MiddleName]
      ,[LastName]
	  ,[FirstName] + ' ' + [LastName] AS FullName
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,geo.City AS CustomerCity -- Joined Customer City from Geography Table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer]
  LEFT JOIN dbo.DimGeography AS geo
  ON geo.GeographyKey = DimCustomer.GeographyKey
  ORDER BY CustomerKey