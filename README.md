# E-Commerce Sales Analysis Dashboard

## Project Overview

Developed a three-page business intelligence dashboard using SQL Server, DAX, and Power BI to analyze e-commerce sales performance, customer behavior, regional trends, and product profitability.

The project combines SQL-based business analysis with Power BI visualization to transform raw transactional data into actionable insights that support data-driven decision-making.

---

## Tools & Technologies

* SQL Server
* Power BI
* DAX (Data Analysis Expressions)
* CSV Dataset (Superstore)

---

## Dashboard Pages

### Executive Overview

* Total Sales
* Total Profit
* Total Orders
* Average Order Value (AOV)
* Sales by Region
* Sales by Category
* Profit by Category
* Monthly Sales Trend

### Customer Analysis

* Top 10 Most Profitable Customers
* Customer Value Segmentation
* Top Customer Per Region

### Product Profitability Analysis

* Top 10 Most Profitable Products
* Top 10 Least Profitable Products
* High Sales but Negative Profit Products
* Profit by Sub-Category

---

## Key Business Findings

### Executive Performance

* Analyzed 5,009 customer orders.
* Generated approximately **$2.30M in sales** and **$286.40K in profit**.
* Calculated an **Average Order Value (AOV) of $458.61**.

### Regional Performance

* Identified the West region as the highest-performing sales region.
* Compared sales performance across West, East, Central, and South regions to highlight regional revenue concentration and potential growth opportunities.

### Category Analysis

* Evaluated category-level sales and profitability.
* Determined that strong sales volume does not always translate into strong profitability, emphasizing the importance of margin-focused analysis.

### Customer Analysis

* Created customer segmentation logic using DAX to classify customers as:

  * High Value
  * Mid Value
  * Low Value
* Found that approximately:

  * 78% of customers were Low Value
  * 18% were Mid Value
  * 4% were High Value
* Identified the highest-profit customer in each region using SQL window functions.

### Product Profitability Analysis

* Ranked products by total profit to identify top-performing and loss-generating products.
* Discovered products generating over $10,000 in sales while still producing negative profit, indicating potential pricing, discounting, or cost-management issues.
* Compared profitability across product sub-categories to identify the strongest profit contributors.

---

## Technical Skills Demonstrated

### SQL

* Aggregate Functions (`SUM`, `COUNT`, `AVG`)
* `GROUP BY` and `HAVING`
* Common Table Expressions (CTEs)
* Window Functions (`RANK()`)
* Customer Segmentation Analysis
* Regional Performance Analysis
* Product Profitability Analysis
* KPI Calculation

### Power BI & DAX

* Multi-page Dashboard Design
* KPI Cards
* Interactive Business Visualizations
* Data Modeling
* Custom DAX Calculations
* Customer Value Classification (High / Mid / Low Value)
* Data Aggregation and Filtering
* Executive Reporting and Data Storytelling

### Business Analytics

* Revenue Analysis
* Profitability Analysis
* Customer Segmentation
* Regional Performance Evaluation
* Product Performance Assessment
* Identification of Operational and Pricing Risks

---

## Project Outcome

This project demonstrates the ability to use SQL, DAX, and Power BI to move beyond reporting and uncover actionable business insights. The analysis identifies revenue drivers, customer value concentration, regional performance patterns, and product profitability opportunities that can support strategic business decisions.

---

## Repository Structure

```text
SQL /
Data /
Ecommerce_Sales_Analysis.pbix
Sample - Superstore.csv
```


