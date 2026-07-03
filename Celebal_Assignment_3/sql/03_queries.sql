-- Query 1: Orders whose Sales are greater than the average sales (Subquery)
SELECT *
FROM orders
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM orders
);
-- Query 2: Highest sales order for each customer (Subquery)
SELECT *
FROM orders o
WHERE Sales =
(
    SELECT MAX(Sales)
    FROM orders
    WHERE `Customer ID` = o.`Customer ID`
);
-- Query 3: Total sales for each customer (CTE)
WITH CustomerSales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS TotalSales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT *
FROM CustomerSales;
-- Query 4: Customers with above-average sales (CTE + Subquery)
WITH CustomerSales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS TotalSales
    FROM orders
    GROUP BY `Customer ID`
)
SELECT *
FROM CustomerSales
WHERE TotalSales >
(
    SELECT AVG(TotalSales)
    FROM CustomerSales
);
-- Query 5: Rank customers based on total sales [Window Function]
WITH CustomerSales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS TotalSales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT
    `Customer ID`,
    TotalSales,
    RANK() OVER(ORDER BY TotalSales DESC) AS SalesRank
FROM CustomerSales;
-- Query 6: Row numbers for each order within a customer[window function + partition by]
SELECT
    `Customer ID`,
    `Order ID`,
    Sales,

    ROW_NUMBER() OVER
    (
        PARTITION BY `Customer ID`
        ORDER BY `Order Date`
    ) AS OrderNumber

FROM orders;
-- Query 7: Top 3 customers based on total sales [Window function]
WITH CustomerSales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS TotalSales
    FROM orders
    GROUP BY `Customer ID`
)
SELECT *
FROM
(
    SELECT
        `Customer ID`,
        TotalSales,
        RANK() OVER(ORDER BY TotalSales DESC) AS SalesRank
    FROM CustomerSales
) x
WHERE SalesRank <= 3;
-- Final combined query
WITH CustomerSales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS TotalSales
    FROM orders
    GROUP BY `Customer ID`
)
SELECT
    c.`Customer Name`,
    cs.TotalSales,
    RANK() OVER
    (
        ORDER BY cs.TotalSales DESC
    ) AS SalesRank
FROM CustomerSales cs
JOIN customers c
ON cs.`Customer ID` = c.`Customer ID`
ORDER BY SalesRank;