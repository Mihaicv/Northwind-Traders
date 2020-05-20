

SELECT product_name as product, company_name as company
FROM products LEFT JOIN suppliers
ON products.supplier_id= suppliers.supplier_id
ORDER BY products.product_name ;



