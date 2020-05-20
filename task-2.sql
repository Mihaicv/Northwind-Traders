

SELECT category_name as category, COUNT(products.category_id) as number_of_products
FROM categories JOIN products
ON categories.category_id=products.category_id
GROUP BY category_name
ORDER BY number_of_products DESC;