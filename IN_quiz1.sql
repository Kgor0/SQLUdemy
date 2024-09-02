/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

SELECT COUNT(orderid) FROM orders
WHERE customerid IN(7888, 1082, 12808, 9623);