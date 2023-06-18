-- DIM_Product Table --
SELECT [ProductKey]
      ,[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS ProductName
	  ,ProductSubcategory.EnglishProductSubcategoryName AS SubCategory
	  ,ProductCategory.EnglishProductCategoryName AS ProductCategory
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] AS ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS ProductModelName
      --,[LargePhoto]
      ,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL([Status], 'Outdated') AS ProductStatus
  FROM [AdventureWorksDW2019].[dbo].[DimProduct]
  LEFT JOIN DimProductSubcategory AS ProductSubcategory
  ON ProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS ProductCategory
  ON ProductCategory.ProductCategoryKey = ProductSubcategory.ProductCategoryKey
  ORDER BY DimProduct.ProductKey