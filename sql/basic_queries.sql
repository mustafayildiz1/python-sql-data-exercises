-- Total revenue by country
SELECT country,
       SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY country
ORDER BY total_revenue DESC;

-- Top 5 products by revenue
SELECT product,
       SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;

-- Revenue by category
SELECT category,
       SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;
