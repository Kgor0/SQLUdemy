
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

SELECT * FROM orders;

SELECT * FROM customers;

SELECT c.firstname, c.lastname, c.state, o.orderid 
FROM orders AS o
INNER JOIN customers AS c
ON c.customerid = o.customerid
WHERE c.state IN ('OH', 'NY', 'OR')
ORDER BY o.orderid;

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT * FROM products;

SELECT * FROM inventory;

SELECT p.prod_id, i.quan_in_stock
FROM products AS p
INNER JOIN inventory AS i ON p.prod_id = i.prod_id;