-- 01
INSERT INTO suppliers 
 VALUES (
 null,
 'New Supplier',
 'David Lisk',
 'Some Guy',
 '123 Somewhere Street',
 'Some City',
 'Some Country',
 '111-222-1234'
 );
 SELECT
	*
FROM 
	suppliers
WHERE
	CompanyName = 'New Supplier';
    
-- 02
INSERT INTO products (
 ProductName,
    SupplierID,
    CategoryID,
    QuantityPerUnit,
    UnitPrice
)
VALUES (
'Some Product',
30,
1,
'10 x 10',
19.99
);

-- 03
SELECT 
	s.CompanyName,
    s.ContactName,
    p.ProductName,
    p.UnitPrice
FROM
	suppliers s
JOIN
	products p ON s.SupplierID = p.SupplierID
WHERE
	s.CompanyName = 'New Supplier';

-- 04
UPDATE products
SET
	UnitPrice = UnitPrice * 1.15 
WHERE
	ProductName = 'Some Product';
    
-- 05
SELECT ProductName, UnitPrice
FROM products
WHERE ProductName = 'Some Product';

SELECT 
    s.CompanyName,
    p.ProductName,
    p.UnitPrice
FROM 
    suppliers s
JOIN 
    products p ON s.SupplierID = p.SupplierID
WHERE 
    p.ProductName = 'Some Product';
    
-- 06
DELETE FROM products
WHERE ProductName = 'Some Product';

-- 07
DELETE FROM suppliers
WHERE CompanyName = 'New Supplier';

-- 08
SELECT * FROM products;

-- 09 
SELECT * FROM suppliers;