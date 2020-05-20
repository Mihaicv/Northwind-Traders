
SELECT company_name AS company_name, count(orders.customer_id) AS orders,
       STRING_AGG(orders.order_id ::varchar,',') AS order_ids
FROM customers JOIN orders
ON customers.customer_id=ORDERS.customer_id
GROUP BY company_name,country
HAVING count(orders.customer_id)<5 AND customers.country = 'USA'
ORDER BY orders
