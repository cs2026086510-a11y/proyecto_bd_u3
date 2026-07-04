

DROP TABLE IF EXISTS sales CASCADE;
DROP TABLE IF EXISTS sale_items CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS suppliers CASCADE;
DROP TABLE IF EXISTS categories CASCADE;

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,
    company_name VARCHAR(120) NOT NULL,
    contact_name VARCHAR(100),
    phone VARCHAR(30),
    email VARCHAR(120)
);

-- ERROR 1
CREATE TABL products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    price NUMERIC(10,2),
    stock INTEGER,
    category_id INTEGER,
    supplier_id INTEGER,
    FOREIGN KEY (category_id)
        REFERENCES categories(category_id),
    FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id)
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    sale_date DATE,
    customer_name VARCHAR(120),
    total NUMERIC(12,2)
);

CREATE TABLE sale_items (
    sale_item_id SERIAL PRIMARY KEY,
    sale_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    unit_price NUMERIC(10,2),
    FOREIGN KEY (sale_id)
        REFERENCES sales(sale_id),
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

INSERT INTO categories(name,description)
VALUES
('Laptops','Computadoras'),
('Accesorios','Perifericos'),
('Audio','Equipos de sonido');

INSERT INTO suppliers(company_name,contact_name,phone,email)
VALUES
('Tech Import','Juan Perez','999111222','tech@example.com'),
('Global Store','Maria Lopez','999333444','global@example.com');

-- ERROR 2
INSERT INTO products(name,price,stock,category_id,supplier_id)
VALUESS
('Laptop Lenovo',3500,20,1,1);

INSERT INTO products(name,price,stock,category_id,supplier_id)
VALUES
('Mouse Logitech',90,100,2,1),
('Teclado Mecanico',250,60,2,2),
('Parlante Bluetooth',180,40,3,2);

INSERT INTO sales(sale_date,customer_name,total)
VALUES
(CURRENT_DATE,'Carlos Soto',3590);

INSERT INTO sale_items(sale_id,product_id,quantity,unit_price)
VALUES
(1,1,1,3500),
(1,2,1,90);

SELECT *
FROM categories;

SELECT *
FROM suppliers;

-- ERROR 3
SELECT
    name,
    price
FORM products;

SELECT
    product_id,
    name,
    price,
    stock
FROM products
ORDER BY price DESC;

SELECT
    p.name,
    c.name AS category
FROM products p
INNER JOIN categories c
ON p.category_id=c.category_id;

SELECT
    p.name,
    s.company_name
FROM products p
INNER JOIN suppliers s
ON p.supplier_id=s.supplier_id;

SELECT
    SUM(total) total_sales
FROM sales;

SELECT
    AVG(price)
FROM products;

SELECT
    COUNT(*)
FROM products;

UPDATE products
SET stock=stock-1
WHERE product_id=1;

-- ERROR 4
UPDATE products
SET price==450
WHERE product_id=2;

DELETE FROM sale_items
WHERE quantity=0;

SELECT
    p.name,
    CASE
        WHEN price>1000 THEN 'ALTO'
        WHEN price>200 THEN 'MEDIO'
        ELSE 'BAJO'
    END AS rango
FROM products p;

SELECT
    customer_name,
    total
FROM sales
WHERE total >
(
    SELECT AVG(total)
    FROM sales
);

-- ERROR 5
SELECT
    name
FROMM suppliers;

CREATE VIEW vw_products AS
SELECT
    p.product_id,
    p.name,
    p.price,
    c.name categoria,
    s.company_name proveedor
FROM products p
INNER JOIN categories c
ON p.category_id=c.category_id
INNER JOIN suppliers s
ON p.supplier_id=s.supplier_id;

SELECT *
FROM vw_products;

WITH expensive_products AS
(
    SELECT
        product_id,
        name,
        price
    FROM products
    WHERE price>500
)
SELECT *
FROM expensive_products;

BEGIN;

UPDATE products
SET stock=stock+10
WHERE supplier_id=1;

COMMIT;

-- ERROR 6
SELEC *
FROM products;

SELECT
    NOW();

ROLLBACK;