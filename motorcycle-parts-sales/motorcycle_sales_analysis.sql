SELECT * FROM sales LIMIT 10;

SELECT
  product_line,
  CASE
    WHEN MONTH(`date`) = 6 THEN 'June'
    WHEN MONTH(`date`) = 7 THEN 'July'
    WHEN MONTH(`date`) = 8 THEN 'August'
    ELSE CONCAT('Month ', MONTH(`date`))
  END AS month_name,
  warehouse,
  ROUND(SUM(total * (1 - payment_fee)), 2) AS net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY product_line, month_name, warehouse
ORDER BY product_line, month_name, net_revenue DESC;
