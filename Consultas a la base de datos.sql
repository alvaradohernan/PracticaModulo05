-- Consultas en PostgreSQL

-- Insertar fila en tablas Customer, Staff y Actor

Select * FROM  customer;

INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, activebool,
					 create_date, last_update, active)
					 
VALUES (598, 1, 'Clarence', 'Williams', 'clarence.williams@sakilacustomer.org', 608, TRUE, '2006-02-14', '2013-05-26 14:49:45.738', 1)


Select * FROM  staff;

INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password,
					last_update)
					 
VALUES (3, 'Raimundo', 'Alvarado', 5, 'raimundo.alvarado@sakilacustomer.org',  1, TRUE, 'Raimundo', '8cb2237d0679ca88db6464eac60da96345513964', '2013-05-26 14:49:45.738')*/


Select * FROM  actor;

INSERT INTO actor (actor_id, first_name, last_name,last_update)

VALUES (201, 'Pablo', 'Suárez', '2013-05-26 14:47:57.62')


-- Modificar y eliminar fila en tablas Customer, Staff y Actor

UPDATE customer 
SET first_name = 'Carola' 
WHERE first_name = 'Carol'

DELETE FROM customer
WHERE customer_id = 18;

UPDATE staff 
SET first_name = 'Carlos' 
WHERE first_name = 'Raimundo';

DELETE FROM staff
WHERE staff_id = 3;

UPDATE actor 
SET first_name = 'Nicolás' 
WHERE first_name = 'Nick';

DELETE FROM actor
WHERE actor_id = 201;

-- Listar todas las "rental" con los datos del "customer" dado un año y un mes.

SELECT * FROM rental r
JOIN customer c 
ON r.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM r.rental_date) = 2005
AND EXTRACT(MONTH FROM r.rental_date) = 5;

-- Listar Número (payment_id), Fecha (payment_date) y Total (amount) de todas las "payment".

SELECT payment_id, payment_date, amount FROM payment
ORDER BY payment_date ASC;

--Listar todas las "film" del año 2006 que contengan un "rental_rate" mayor a 4.0:

SELECT *
FROM film
WHERE release_year = 2006
AND rental_rate > 4.0;







