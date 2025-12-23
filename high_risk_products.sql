SELECT product_id, COUNT(*) AS returns
FROM returns
GROUP BY product_id
HAVING COUNT(*) > 1;
