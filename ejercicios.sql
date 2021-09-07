-- Author: Héctor G. T. Torres
-- Alias: Lornar the Breton
-- Year: 2021
-- Organization: Instituto Tecnológico Autónomo de México (ITAM)

-- Licencia: 
	-- GPP (General Public Patas)
		-- A quien distribuya este código con una licencia comercial
		-- le huelen las patas y lo tiene que admitir públicamente.

-- Instrucciones: solo corre cada query sin miedo al éxito.

-- 1
SELECT * FROM suppliers
	WHERE 
		contact_title = 'Sales Representative';
	
-- 2
SELECT * FROM suppliers
	WHERE 
		contact_title != 'Marketing Manager';
	
-- 3
SELECT * FROM orders
	WHERE 
		ship_country != 'USA';
	
--4 
	-- Según la tabla categories, el category_id de los quesos es 4
SELECT product_id FROM products p 
	WHERE 
		category_id =4;
	
-- 5
SELECT * FROM orders
	WHERE 
		ship_country = 'France'
	OR 	ship_country = 'Belgium';

-- 6
SELECT * FROM orders
	WHERE 
		ship_country = 'Argentina'
	OR 	ship_country = 'Venezuela'
	OR 	ship_country = 'Mexico'
	OR 	ship_country = 'Brazil'; 

-- 7
SELECT * FROM orders
	WHERE 
			ship_country != 'Argentina'
	AND 	ship_country != 'Venezuela'
	AND 	ship_country != 'Mexico'
	AND 	ship_country != 'Brazil'; 

-- 8
SELECT employee_id, CONCAT(first_name,' ',last_name) AS full_name FROM employees;

-- 9
SELECT SUM(unit_price*(1-discount)) FROM order_details od;

-- 10
SELECT country, COUNT(customer_id) AS number_of_customers FROM customers c
	GROUP BY (country);