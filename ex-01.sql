SELECT *
FROM SalesLT.Customer 
WHERE LOWER(RIGHT(FirstName, 1)) IN ('a', 'b', 'c', 'd', 'e', 'f');

SELECT a.City, COUNT(ca.CustomerID)
FROM SalesLT.CustomerAddress ca
LEFT JOIN SalesLT.Address a ON ca.AddressID = a.AddressID
GROUP BY a.City;

SELECT so.SalesOrderID, so.OrderDate, COUNT(sod.ProductID) AS ItemCount
FROM SalesLT.SalesOrderHeader AS so
JOIN SalesLT.SalesOrderDetail AS sod ON so.SalesOrderID = sod.SalesOrderID
GROUP BY so.SalesOrderID, so.OrderDate;

SELECT TOP 10 c.CustomerID, MAX(so.SubTotal)
FROM SalesLT.SalesOrderHeader AS so
JOIN Customer AS c ON so.CustomerID = c.Customer 
GROUP BY c.CustomerID;
