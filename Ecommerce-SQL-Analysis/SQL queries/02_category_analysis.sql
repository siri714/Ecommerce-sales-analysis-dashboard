-- =========================================
-- CATEGORY ANALYSIS
-- Ecommerce SQL Analysis Project
-- =========================================

-- Total Sales by Category
SELECT Category,
       SUM(Sales) AS total_sales
FROM dbo.Superstore_orders
GROUP BY Category
ORDER BY total_sales DESC;

-- Total Profit by Category
SELECT Category,
       SUM(Profit) AS total_profit
FROM dbo.Superstore_orders
GROUP BY Category
ORDER BY total_profit DESC;

