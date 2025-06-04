-- #1
USE
	northwind;
SELECT
	COUNT(*)
FROM
	suppliers;
-- #2
SELECT
	sum(salary) as "Total Salaries"
FROM
	employees;
-- #3
SELECT
	min(UnitPrice) as "Cheapest Item"
FROM
	Products;
-- #4
SELECT
	AVG(Unitprice) as "Average Unit Price"
FROM
	Products;
-- #5
SELECT
	max(UnitPrice) as "Most Expensive"
FROM
	Products;
-- #6
SELECT
	COUNT(*) as NumberOfItems
FROM
	northwind.products
GROUP BY
	SupplierID;
-- #7
SELECT
	CategoryID,
    AVG(UnitPrice) as "Average Product Price"
FROM
	Products
GROUP BY
	CategoryID;
-- #8
SELECT
	SupplierID,
    COUNT(*) as ProductCount
FROM
	northwind.Products
GROUP BY
	SupplierID
HAVING
	ProductCount >= 5;

-- #9
SELECT
	ProductID,
    ProductName,
    (UnitPrice * UnitsInStock) as InventoryValue
FROM
	northwind.products
ORDER BY
	InventoryValue DESC,
    ProductName;
    
