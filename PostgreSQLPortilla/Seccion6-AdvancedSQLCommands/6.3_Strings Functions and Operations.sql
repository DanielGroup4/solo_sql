/*
SELECT LENGTH(first_name) 
FROM customer
-- devuelve el numero de caracteres de cada registro de first_name
*/

/*
-- concatenar nombre y apellido
SELECT first_name || ' '|| last_name 
FROM customer
*/

/*
SELECT upper(first_name) || ' '|| upper(last_name )
FROM customer
*/

SELECT LOWER(LEFT(first_name,1)) || LOWER(last_name) || '@gmail.com' AS custom_email
FROM customer
