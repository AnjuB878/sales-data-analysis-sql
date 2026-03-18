# Sales Data Analysis Using SQL

## Objective
Analyze customer and order data to identify sales trends and key business insights.

## Dataset
- Customers table (customer_id, name, city)
- Orders table (order_id, customer_id, date, amount)

## Key Analysis
- Total sales per customer
- Top 3 customers by revenue
- Monthly sales trend
- Average order value
- Customers without orders

## SQL Concepts Used
- JOIN (INNER, LEFT)
- GROUP BY
- ORDER BY
- Aggregate functions (SUM, AVG)
- Date functions (MONTH)

## Key Insights
- Top customer generated highest revenue (₹1700)
- Top 3 customers contributed most revenue
- Sales peaked in March
- Average order value was ₹581.25
- All customers were active

## Sample Query

```sql
SELECT c.customer_name, SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

## Conclusion
This project demonstrates the use of SQL for data analysis by extracting meaningful business insights from structured data.
