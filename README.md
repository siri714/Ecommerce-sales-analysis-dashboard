# E-Commerce Sales Analysis Dashboard

## Project Overview

Developed a 3-page business intelligence dashboard using SQL Server and Power BI to analyze e-commerce sales performance, customer behavior, regional trends, and product profitability.

The project transforms raw transactional data into actionable business insights that can support pricing decisions, customer retention strategies, inventory planning, and regional sales optimization.

---

## Tools Used

* SQL Server
* Power BI
* CSV Dataset (Superstore)

---

## Dashboard Pages

### Executive Overview

* Total Sales, Profit, Orders, and Average Order Value
* Sales by Region
* Sales by Category
* Profit by Category
* Monthly Sales Trend

### Customer Analysis

* Top 10 Most Profitable Customers
* Customer Value Segmentation
* Top Customer per Region

### Product Profitability Analysis

* Top 10 Most Profitable Products
* Top 10 Least Profitable Products
* High Sales but Negative Profit Products
* Profit by Sub-Category

---

## Key Business Insights

### Revenue & Profitability

* Generated approximately **$2.30M in total sales** and **$286K in profit** across **5,009 orders**.
* Average Order Value was approximately **$458.61**.

### Regional Performance

* The **West region** generated the highest sales (~$730K).
* The **South region** generated the lowest sales (~$400K), indicating potential opportunities for growth.

### Category Performance

* **Technology** was the highest-performing category, generating approximately **$145K in profit**.
* **Furniture** produced strong sales but significantly lower profit, suggesting weaker margins compared to other categories.
* **Office Supplies** delivered consistent profitability despite lower sales volume.

### Customer Analysis

* The majority of customers (**~78%**) were classified as **Low Value** customers.
* Only **~4%** of customers were classified as **High Value**, highlighting a small group that contributes disproportionately to business value.
* Identified the most profitable customer in each region using SQL ranking functions.

### Product Profitability

* Several products generated over **$10K in sales while producing negative profit**, indicating potential discounting, pricing, or cost-management issues.
* Identified the top 10 profit-generating products and the top 10 loss-generating products for further business review.

### Sub-Category Insights

* **Phones** and **Copiers** emerged as major profit contributors.
* Profitability varied significantly across sub-categories, demonstrating that high sales volume does not always translate into high profit.

---

## SQL Techniques Used

* Common Table Expressions (CTEs)
* Aggregate Functions (SUM, COUNT)
* GROUP BY Analysis
* HAVING Filters
* Customer Segmentation Logic
* Window Functions (RANK)
* Profitability Analysis
* Regional Performance Analysis

---

## Project Outcome

This project demonstrates the ability to use SQL and Power BI to move beyond reporting and uncover meaningful business insights. The analysis identifies revenue drivers, profitability risks, customer value concentration, and product-level opportunities that can support data-driven decision making.

---

## Repository Structure

```text
SQL queries/
tables 4 PBI/
Ecommerce_Sales_Analysis.pbix
Sample - Superstore.csv
```

