SELECT category,
       COUNT(CASE WHEN r.order_id IS NOT NULL THEN 1 END) * 100.0 / COUNT(*) AS return_rate
FROM orders o
LEFT JOIN returns r ON o.order_id = r.order_id
GROUP BY category;
