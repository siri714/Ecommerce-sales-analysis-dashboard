WITH Customer_Sales AS
(
    SELECT 
        Customer_Name,
        SUM(Sales) AS total_Sales,
        SUM(Profit) AS total_Profits,
        COUNT(DISTINCT Order_ID) AS Num_Orders
    FROM dbo.Superstore_orders
    GROUP BY Customer_Name
)

SELECT 
    Customer_Name,
    total_Sales,
    total_Profits,
    Num_Orders,
    CASE
        WHEN total_Sales >= 10000 THEN 'High Value'
        WHEN total_Sales >= 5000 THEN 'Mid Value'
        ELSE 'Low Value'
    END AS Customer_Value
FROM Customer_Sales
ORDER BY total_Sales DESC;