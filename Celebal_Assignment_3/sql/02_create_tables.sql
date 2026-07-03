CREATE TABLE customers AS
SELECT DISTINCT
    `Customer ID`,
    `Customer Name`,
    Segment,
    Country,
    City,
    State,
    `Postal Code`,
    Region
FROM superstore_raw;
CREATE TABLE products AS
SELECT DISTINCT
    `Product ID`,
    Category,
    `Sub-Category`,
    `Product Name`
FROM superstore_raw;
CREATE TABLE orders AS
SELECT
    `Row ID`,
    `Order ID`,
    `Order Date`,
    `Ship Date`,
    `Ship Mode`,
    `Customer ID`,
    `Product ID`,
    Sales,
    Quantity,
    Discount,
    Profit
FROM superstore_raw;
SELECT *
FROM customers
LIMIT 10;
SELECT *
FROM products
LIMIT 10;
SELECT *
FROM orders
LIMIT 10;