-- =========================================
-- KPI ANALYSIS
-- Ecommerce SQL Analysis Project
-- =========================================

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM dbo.Superstore_orders;

-- Total Sales Revenue
SELECT SUM(Sales) AS total_sales
FROM dbo.Superstore_orders;

-- Total Profit
SELECT SUM(Profit) AS total_profit
FROM dbo.Superstore_orders;