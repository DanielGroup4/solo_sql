/*
-- Have a look at the Calculation column. What is wrong with it? Please correct it.
-- Echa un vistazo a la columna de cálculo. ¿Qué tiene de malo? Por favor, corríjala.
select system_type_id, column_id, system_type_id *1.000/ column_id as Calculation
from sys.all_columns
*/

/*
-- Please round the fractions in the Calculation column down to the next whole number (so 4.153 would round down to 4).
-- Por favor, redondea las fracciones en la columna de Cálculo al siguiente número entero (así, 4,153 se redondearía a 4).
select system_type_id, column_id, FLOOR(system_type_id *1.000/ column_id) as Calculation
from sys.all_columns
*/

/*
-- Please round the fractions up (so 4.153 would round up to 5).
-- Por favor, redondea las fracciones hacia arriba (así que 4,153 se redondearía a 5).
select system_type_id, column_id, CEILING(system_type_id *1.000/ column_id) as Calculation
from sys.all_columns
*/

/*
-- Please round the fractions to the nearest one decimal place (so 4.153 would round up to 4.2).
-- Por favor, redondea las fracciones al decimal más cercano (así, 4,153 se redondearía a 4,2).
select system_type_id, column_id, ROUND(system_type_id *1.000/ column_id, 1) as Calculation
from sys.all_columns
*/

-- Multiply the first field, system_type_id, by 2, and then convert it to a tiniyint. 
-- If it doesn't work, instead of converting it using CONVERT or CAST, 
-- use the functions TRY_CONVERT or TRY_CAST instead - these give a NULL if the conversion doesn't work properly.
-- Multiplica el primer campo, system_type_id, por 2, y luego conviértelo en un tiniyint. 
-- Si no funciona, en lugar de convertirlo mediante CONVERT o CAST, 
-- utilice las funciones TRY_CONVERT o TRY_CAST en su lugar - éstas dan un NULL si la conversión no funciona correctamente.
select system_type_id, column_id, TRY_CONVERT(TINYINT, system_type_id * 2)  as Calculation
from sys.all_columns
