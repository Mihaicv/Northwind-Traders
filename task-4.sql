

SELECT country as country, COUNT(company_name) as number_of_customers
FROM customers
GROUP BY  country
HAVING COUNT(company_name)>5
ORDER BY number_of_customers DESC;
