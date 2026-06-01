-- =========================================
-- PRODUCT PROFITABILITY ANALYSIS
-- Ecommerce SQL Analysis Project
-- =========================================


-- Most Profitable Products

SELECT 
    Product_Name,
    SUM(Profit) AS product_profit
FROM dbo.Superstore_orders
GROUP BY Product_Name
ORDER BY product_profit DESC;

-- Products With High Sales But Negative Profit

SELECT 
    Product_Name,
    SUM(Sales) AS product_sales,
    SUM(Profit) AS product_profit
FROM dbo.Superstore_orders
GROUP BY Product_Name
HAVING SUM(Sales) > 10000
   AND SUM(Profit) < 0
ORDER BY product_sales DESC;


-- Least Profitable Products
SELECT Product_name , SUM(Profit) AS product_profit 
From dbo.Superstore_orders
group by product_name 
Order by product_profit asc

-- Profitability by Sub-Category

SELECT 
    Sub_Category,
    SUM(Sales) AS subcategory_sales,
    SUM(Profit) AS subcategory_profit
FROM dbo.Superstore_orders
GROUP BY Sub_Category
ORDER BY subcategory_profit DESC;