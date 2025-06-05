-- INNER JOIN------ﾠOnly matching rows 
-- LEFT JOINﾠ-----All from the left + matches from right
-- RIGHT JOIN-----ﾠAll from the right + matches from left
-- OUTER JOIN----Everything from both – matched or not

-- 01
SELECT
	P.ProductID,
    P.ProductName,
    P.UnitPrice,
	C.CategoryName
FROM
	Products P 
JOIN Categories C ON (C.CategoryID = P.CategoryID);
    
    
-- 02
SELECT
	P.ProductID,
    P.ProductName,
    P.UnitPrice,
    S.CompanyName
FROM
	Products P
    join Suppliers S ON (S.SupplierID = P.SupplierID)
WHERE 
	P.UnitPrice > 75
ORDER BY
	P.ProductName;
    
-- 03
SELECT
	P.ProductID,
    P.ProductName,
    P.UnitPrice,
    C.CategoryName,
    S.CompanyName
FROM
	Products P
    join Categories C ON (C.CategoryID = P.CategoryID)
    join Suppliers S on (S.SupplierID = P.SupplierID)
ORDER BY
	P.ProductName;
    
-- 04
SELECT
    P.ProductName,
    C.CategoryName,
	P.UnitPrice
FROM
	Products P
    join Categories C ON (C.CategoryID = P.CategoryID)
WHERE
	P.UnitPrice = (SELECT max(UnitPrice) FROM Products)
ORDER BY
	P.ProductName;

-- 05
SELECT
    O.OrderID,
    O.ShipName,
	O.ShipAddress,
    O.ShipCountry,
    S.CompanyName
FROM
	Orders O
    join Shippers S ON (S.ShipperID = O.ShipVia)
WHERE
	O.ShipCountry = "germany";
    
-- 06
SELECT
    O.OrderID,
    O.OrderDate,
    O.ShipName,
	O.ShipAddress,
    O.ShipCountry,
    P.ProductName
FROM
	Orders O
    join `Order Details` OD ON (OD.OrderID = O.OrderID)
    join Products P ON (P.ProductID = OD.ProductID)
WHERE
	P.ProductName = "Sasquatch Ale";