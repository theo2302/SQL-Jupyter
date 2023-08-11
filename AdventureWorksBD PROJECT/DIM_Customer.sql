-- Cleaned Customers + city table
SELECT 
  c.CustomerKey AS CustomerKey, 
  c.FirstName AS FirstName, 
  c.FirstName + ' ' + c.LastName AS [Full Name],
  c.LastName AS LastName, 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.DateFirstPurchase AS DateFirstPurchase, 
  g.City
FROM 
  dbo.dimCustomer AS c 
LEFT JOIN dbo.dimGeography AS g ON c.GeographyKey = g.GeographyKey;
