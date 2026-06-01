-- =========================================
-- CUSTOMER BEHAVIOR ANALYSIS
-- Ecommerce SQL Analysis Project
-- =========================================

-- Top Customers by Profit
SELECT Customer_Name,SUM(Profit) AS total_profit
FROM dbo.Superstore_orders
GROUP BY Customer_Name
ORDER BY total_profit DESC;