SELECT TOP 1000[ProductKey],CAST([OrderDate] as DATE) as OrderDate, CAST([ShipDate] as DATE) as ShipDate,[CustomerKey],[SalesAmount],[TotalProductCost], [ProductStandardCost],[City],[EnglishCountryRegionName] AS Country
FROM FactInternetSales as s
Left JOIN DimGeography as g
ON s. SalesTerritoryKey = g.SalesTerritoryKey
;
