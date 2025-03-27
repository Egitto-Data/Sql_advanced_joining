/*GET ALL CUSTOMERS WHO HAVEN'T PLACED ANY ORDERS */--LEFT ANTI JOIN
SELECT*
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

/*GET ALL ORDERS WITHOUT MATCHING ORDERS */--RIGHT ANTI JOIN
SELECT*
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

/*GET ALL ORDERS WITHOUT MATCHING ORDERS,AND CUSROMERS WITHOUT ORDERS
*/--FULL ANTI JOIN

SELECT*
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL

 
 /*Get all customers only  who have pleced orders
*/--FULL ANTI JOIN

SELECT*
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NOT NULL AND o.customer_id IS NOT NULL
