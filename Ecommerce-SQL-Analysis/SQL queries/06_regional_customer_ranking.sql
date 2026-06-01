-- Top Customer by Profit Within Each Region..using rank,partionby ,groupby ,ctes

WITH customer_profits AS (
    SELECT Customer_Name,
           Region,
           SUM(Profit) AS total_PRt
    FROM dbo.Superstore_orders
    GROUP BY Customer_Name, Region
),

ranked_customers AS (
    SELECT *,
           RANK() OVER (
               PARTITION BY Region
               ORDER BY total_PRt DESC
           ) AS profit_rank
    FROM customer_profits
)

SELECT *
FROM ranked_customers
WHERE profit_rank = 1;