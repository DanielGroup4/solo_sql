/* estract a list of all names that are encountered less and 200 times.  Let the data refer
to people hired after the 1st of january 1999
estraer una lista de todos los nombres que se encuentran menos de 200 veces.  Que los datos se refieran
a las personas contratadas después del 1 de enero de 1999
*/
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC
