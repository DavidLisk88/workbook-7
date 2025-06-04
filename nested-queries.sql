-- #1
SELECT
	ProductName,
    UnitPrice
FROM
	Products
WHERE
	UnitPrice = (
		SELECT
			MAX(UnitPrice)
		FROM
			Products
            );
      
      
-- #2
SELECT
	OrderID,
    ShipName,
    ShipAddress,
    ShipVia
FROM
	Orders
WHERE
	ShipVia = (
SELECT
	ShipperID
FROM
	shippers
WHERE
	CompanyName = "Federal Shipping"
	);
	
    
-- #3
SELECT
	OrderID,
    ProductID
FROM
	`Order Details`
WHERE
	ProductID = (
SELECT
	ProductID 
FROM
	Products
WHERE
	ProductName = "Sasquatch Ale"
	);
    
    
-- #4
SELECT
	FirstName,
    LastName
FROM 
	employees
WHERE
	EmployeeID = (
    
    SELECT
		EmployeeID
	FROM
		Orders
	WHERE
		OrderID = 10266
	);
    
    
-- #5
SELECT
	ContactName,
    CompanyName
FROM 
	customers
WHERE
	CustomerID = (
    
    SELECT
		CustomerID
	FROM
		Orders
	WHERE
		OrderID = 10266
	);
	