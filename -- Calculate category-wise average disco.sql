-- Calculate category-wise average discount
SELECT category, AVG(discount) AS average_discount
FROM df_orders
GROUP BY category;

-- Top 10 regions by total revenue
SELECT region, category, SUM(sale_price) AS total_revenue
FROM df_orders
GROUP BY region, category
ORDER BY region, total_revenue DESC
LIMIT 10;

-- product that had the highest profit margin
SELECT product_id, `profit_margin_%`
FROM df_orders
ORDER BY `profit_margin_%` DESC
LIMIT 1;

-- Calculate the average profit margin by category
SELECT category, AVG(`profit_margin_%`) AS avg_profit_margin
FROM df_orders
GROUP BY category;

-- Total sales per region
SELECT region, SUM(sales) AS total_sales
FROM df_orders
GROUP BY region;

-- Monthly sales trend for the year 2015
SELECT MONTH(order_date) AS month, SUM(sales) AS total_sales
FROM df_orders
WHERE YEAR(order_date) = 2015
GROUP BY month
ORDER BY month;

-- top 5 categories by revenue in each region
WITH cat_rev AS (
  SELECT 
    region,
    category,
    SUM(sale_price) AS total_revenue,
    RANK() OVER (PARTITION BY region ORDER BY SUM(sale_price) DESC) AS rnk
  FROM df_orders
  GROUP BY region, category
)
SELECT region, category, total_revenue, rnk
FROM cat_rev
WHERE rnk <= 5
ORDER BY region, rnk;

-- Year-over-year sales growth by category between 2015 and 2016
WITH cte AS (
    SELECT category, YEAR(order_date) AS yr, SUM(sale_price) AS sales
    FROM df_orders
    GROUP BY category, YEAR(order_date)
),
pivoted AS (
    SELECT category,
           SUM(CASE WHEN yr = 2015 THEN sales ELSE 0 END) AS sales_2015,
           SUM(CASE WHEN yr = 2016 THEN sales ELSE 0 END) AS sales_2016
    FROM cte
    GROUP BY category
)
SELECT *, (sales_2016 - sales_2015) AS growth
FROM pivoted
ORDER BY growth DESC;

-- Find the 10 products with the lowest total quantity sold
SELECT product_id, SUM(quantity) AS total_qty
FROM df_orders
GROUP BY product_id
ORDER BY total_qty ASC
LIMIT 10;
