CREATE DATABASE mis_db;
use mis_db;

-- Top 10 product by revenue 
SELECT 
     p.product_name,
     SUM(fs.net_sales) AS total_revenue
FROM fact_sales_transactions As fs
JOIN dim_product As p on fs.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Region-wise profit
SELECT 
     r.region,
     ROUND(SUM(fs.profit),2) AS total_profit
FROM fact_sales_transactions As fs
JOIN dim_region AS r ON fs.region_id=r.region_id
GROUP BY r.region 
ORDER BY total_profit DESC;

-- Discount Impact 
SELECT
     COALESCE(discount_pct,0) AS discount_level,
     COUNT(transaction_id) AS total_transaction,
     ROUND(AVG(quantity),2) As avg_quantity,
     ROUND(AVG(profit),2) As avg_profit,
     ROUND((SUM(profit)/SUM(net_sales))*100,2) AS margin_percentage
FROM fact_sales_transactions
GROUP BY discount_level
ORDER BY discount_level;

-- Salesperson vs target
SELECT 
    sp.name AS salesperson_name,
    SUM(monthly_sales.total_net_sales) AS total_actual_sales,
    SUM(t.sales_target) AS total_target,
    ROUND((SUM(monthly_sales.total_net_sales) / SUM(t.sales_target)) * 100, 2) AS achievement_percentage
FROM (
    -- Subquery to aggregate sales by salesperson and month
    SELECT 
        s.salesperson_id, 
        d.month, 
        SUM(s.net_sales) AS total_net_sales
    FROM fact_sales_transactions s
    JOIN dim_date d ON s.date_id = d.date_id
    GROUP BY s.salesperson_id, d.month
) AS monthly_sales
JOIN dim_target t ON monthly_sales.salesperson_id = t.salesperson_id 
                 AND monthly_sales.month = t.month
JOIN dim_salesperson sp ON monthly_sales.salesperson_id = sp.salesperson_id
GROUP BY sp.name
ORDER BY achievement_percentage DESC;












