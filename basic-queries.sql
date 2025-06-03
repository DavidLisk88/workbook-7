-- Basic Queries
-- #1
USE
	northwind;
SELECT
	*
FROM
	products;


-- #2
USE
	northwind;
SELECT
	productID,
    productName
FROM
	products;
 
 
-- #3
USE
	northwind;
SELECT
	productID,
    productName,
    UnitPrice
FROM
	products
ORDER BY
	UnitPrice DESC,
    ProductName ASC;
 
 
    -- #4
USE
	northwind;
SELECT
	productID,
    productName,
    UnitPrice,
    UnitsInStock
FROM
	products
WHERE 
	UnitPrice <= 7.50
ORDER BY
	UnitPrice;
        
    
 -- #5   
USE
	northwind;
SELECT
	productID,
    productName,
    UnitPrice,
    UnitsInStock
FROM
	products
WHERE 
    UnitsInStock >= 100
ORDER BY
	UnitPrice;
 
 
   -- #6
   USE
	northwind;
SELECT
	productID,
    productName,
    UnitPrice,
    UnitsInStock
FROM
	products
ORDER BY
	UnitPrice DESC,
    ProductName ASC;
    
    
   -- #7 
USE
	northwind;
SELECT
	productID,
    productName,
    UnitPrice,
    UnitsInStock,
    UnitsOnOrder
FROM
	products
WHERE 
   UnitsInStock = 0
   AND UnitsOnOrder >= 1;
 
 
   -- #8
USE
	northwind;
SELECT
	*
FROM
	categories;
 
 
    -- #9
USE 
	northwind;
SELECT
	CategoryID,
    CategoryName = "Seafood"
FROM
	categories;

    
-- #10
USE
	northwind;
SELECT
	*
FROM
	products
WHERE
	CategoryID = 8;
 
 
    -- #11
USE
	northwind;
SELECT
	E.FirstName,
    E.LastName,
    CONCAT(E.FirstName, " ", E.LastName) as FullName
FROM
	Employees E;
 
 
    -- #12
USE
	northwind;
SELECT
	*
FROM
	employees
WHERE
	Title LIKE "%Manager%";
  
  
    -- #13
USE 
	northwind;
SELECT
	DISTINCT E.Title
FROM
	employees E;
    
    
    -- #14
SELECT
	*
FROM
	employees
WHERE
	Salary >=2000 AND Salary <= 2500;


-- #15
SELECT 	
	*
FROM
	suppliers;
    
    
    -- #16
SELECT
	*
FROM
	Products P
WHERE
	P.SupplierID = 4;


    
   
   


    
