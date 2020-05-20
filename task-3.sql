

SELECT product_name as product_name, SUM (round((order_details.unit_price*(1-discount))*quantity)) as sum
FROM products LEFT JOIN order_details
ON products.product_id=order_details.product_id
GROUP BY product_name
ORDER BY sum
LIMIT 10


