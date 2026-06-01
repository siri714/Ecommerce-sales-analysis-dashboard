-- =========================================
-- REGIONAL PERFORMANCE ANALYSIS
-- Ecommerce SQL Analysis Project
-- =========================================
-- Total Sales and Profit by Region

-- Regional Sales and Profit Performance

SELECT Region,
       SUM(Sales) AS sales_performance,
       SUM(Profit)AS Profit_performance
FROM dbo.Superstore_orders
GROUP BY Region
ORDER BY Profit_performance DESC;