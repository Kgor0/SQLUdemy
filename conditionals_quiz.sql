SELECT * FROM products;

SELECT prod_id, title, price, 
CASE
WHEN price > 20 THEN 'expensive'
WHEN price BETWEEN 10 AND 20 THEN 'average'
ELSE 'cheap' 
END AS "price class"
FROM products 
ORDER BY prod_id;