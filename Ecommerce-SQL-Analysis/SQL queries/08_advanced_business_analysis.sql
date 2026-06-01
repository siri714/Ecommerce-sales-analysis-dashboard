-- =========================================
-- 08_business_performance_insights.sql
-- Ecommerce SQL Analysis Project
-- =========================================


-- =========================================
-- 1. Top Product in Each Category
-- =========================================

WITH ProductRanks AS (
    SELECT
        Category,
        Product_Name,
        SUM(Profit) AS total_profit,

        RANK() OVER (
            PARTITION BY Category
            ORDER BY SUM(Profit) DESC
        ) AS product_rank

    FROM dbo.Superstore_orders
    GROUP BY Category, Product_Name
)

SELECT *
FROM ProductRanks
WHERE product_rank = 1;



-- =========================================
-- 2. Products Ranked Within Sub-Category
-- =========================================

WITH ProductRanks AS (
    SELECT
        Sub_Category,
        Product_Name,
        SUM(Profit) AS total_profit,

        ROW_NUMBER() OVER (
            PARTITION BY Sub_Category
            ORDER BY SUM(Profit) DESC
        ) AS product_rank

    FROM dbo.Superstore_orders
    GROUP BY Sub_Category, Product_Name
)

SELECT *
FROM ProductRanks;



-- =========================================
-- 3. Profit Margin By Category
-- =========================================

SELECT
    Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,

    ROUND(
        (SUM(Profit) * 100.0) / SUM(Sales),
        2
    ) AS profit_margin_percent

FROM dbo.Superstore_orders

GROUP BY Category

ORDER BY profit_margin_percent DESC;



-- =========================================
-- 4. Running Monthly Sales Total
-- =========================================

SELECT
    YEAR(Order_Date) AS sales_year,
    MONTH(Order_Date) AS sales_month,
    SUM(Sales) AS monthly_sales,

    SUM(SUM(Sales)) OVER (
        ORDER BY YEAR(Order_Date),
                 MONTH(Order_Date)
    ) AS running_sales_total

FROM dbo.Superstore_orders

GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date);



-- =========================================
-- 5. Monthly Sales Growth
-- =========================================

WITH MonthlySales AS (

    SELECT
        YEAR(Order_Date) AS sales_year,
        MONTH(Order_Date) AS sales_month,
        SUM(Sales) AS monthly_sales

    FROM dbo.Superstore_orders

    GROUP BY
        YEAR(Order_Date),
        MONTH(Order_Date)
)

SELECT
    sales_year,
    sales_month,
    monthly_sales,

    LAG(monthly_sales) OVER (
        ORDER BY sales_year,
                 sales_month
    ) AS previous_month_sales

FROM MonthlySales;



-- =========================================
-- 6. Customer Rank Within Segment
-- =========================================

WITH CustomerSales AS (

    SELECT
        Customer_Name,
        SUM(Sales) AS total_sales,

        CASE
            WHEN SUM(Sales) >= 10000 THEN 'High Value'
            WHEN SUM(Sales) >= 5000 THEN 'Mid Value'
            ELSE 'Low Value'
        END AS customer_segment

    FROM dbo.Superstore_orders

    GROUP BY Customer_Name
)

SELECT
    Customer_Name,
    customer_segment,
    total_sales,

    RANK() OVER (
        PARTITION BY customer_segment
        ORDER BY total_sales DESC
    ) AS customer_rank

FROM CustomerSales;