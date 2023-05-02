use sakila;


SELECT * FROM customer;
SELECT COUNT(*) FROM customer;

SELECT c.first_name,c.last_name,c.email,a.address,a.district
FROM customer c
FULL OUTER JOIN address a
ON c.address_id = a.address_id;


SELECT c.first_name,c.last_name,c.email,a.address,a.district 
FROM customer c LEFT JOIN address a
ON c.address_id = a.address_id;

SELECT * FROM customer c LEFT JOIN address a
ON c.address_id = a.address_id ;


SELECT * FROM customer c RIGHT JOIN address a
ON c.address_id = a.address_id ;

SELECT * FROM customer c INNER JOIN address a
ON c.address_id = a.address_id;

SELECT * FROM address a INNER JOIN city 
ON a.city_id = city.city_id;


SELECT * FROM customer c LEFT JOIN address a
ON c.address_id = a.address_id
UNION
SELECT * FROM customer c RIGHT JOIN address a
ON c.address_id = a.address_id;