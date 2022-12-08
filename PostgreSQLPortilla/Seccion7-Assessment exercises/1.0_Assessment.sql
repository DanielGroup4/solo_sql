/*
SELECT * FROM cd.facilities
*/

/*
-- 2
-- you wanto to print out a list of all of the facilities and their cost to members. 
-- How would you retrieve a list of only facility names and costs?
-- quieres imprimir una lista de todas las instalaciones y su coste para los afiliados. 
-- Cómo se regresa una lista con sólo los nombres de las instalaciones y los costes?
SELECT name, membercost
FROM cd.facilities
*/

/*
-- 3.
-- How can you produce a list of facilities that charge a fee to members?
-- ¿Cómo se puede elaborar una lista de instalaciones que cobran una cuota
-- a los afiliados?
-- Expected Results should have just 5 rows:
SELECT name, membercost
FROM cd.facilities
WHERE membercost > 0
*/

/*
-- 4
-- How can you produce a list of facilities that charge a fee to members,
-- and that fee is less than 1/50th of the monthly maintenance cost?
-- Return the facid, facility name, member cost, and monthly
-- maintenance of the facilities in question.
-- Result is just two rows:
-- ¿Cómo se puede elaborar una lista de instalaciones que cobran una cuota a los socios
-- y esa cuota es inferior a 1/50 del coste mensual de mantenimiento?
-- Devuelve la facid, el nombre de la instalación, el coste para el socio 
-- y el mantenimiento
-- mantenimiento de las instalaciones en cuestión.
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < ((1/50.0) *monthlymaintenance)
*/

/*
-- 5
-- How can you produce a list of all facilities with the word 'Tennis' in their name?
SELECT name
FROM cd.facilities
WHERE name LIKE '%Tennis%'
*/

/*
-- 6
-- How can you retrieve the details of facilities with ID 1 and 5? Try to do it
-- without using the OR operator.
SELECT * FROM cd.facilities
WHERE facid IN (1,5)
*/

/*
-- 7
-- How can you produce a list of members who joined after the start of
-- September 2012? Return the memid, surname, firstname, and joindate
-- of the members in question.
-- Expected Result is 10 rows (not all are shown below)
SELECT memid,surname, firstname, joindate
FROM cd.members 
WHERE joindate > '2012-09-01'
*/


/*
-- 8
--How can you produce an ordered list of the first 10 surnames in the
--members table? The list must not contain duplicates.
--Expected Result should be 10 rows if you include GUEST as a last name
-- ¿Cómo se puede elaborar una lista ordenada de los 10 primeros apellidos de la tabla
-- tabla de miembros? La lista no debe contener duplicados.
SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname
LIMIT 10
*/


/*
-- 9
--You'd like to get the signup date of your last member. How can you
-- retrieve this information?
-- Le gustaría obtener la fecha de alta de su último socio. ¿Cómo puede
-- recuperar esta información?
SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1
*/

/*
-- 10
-- Produce a count of the number of facilities that have a cost to guests of
-- 10 or more.
-- Elaborar un recuento del número de instalaciones que tienen un coste para
-- los huéspedes de 10 o más.
SELECT COUNT(*) FROM cd.facilities
WHERE guestcost > 10
*/


/*
-- 11
-- Produce a list of the total number of slots booked per facility in the
-- month of September 2012. Produce an output table consisting of facility
-- id and slots, sorted by the number of slots.
-- Elaborar una lista con el número total de franjas horarias reservadas por instalación 
-- en el mes de septiembre de 2012. Producir una tabla de salida consistente 
-- en la identificación de la instalación y las franjas horarias,
-- ordenadas por el número de franjas horarias.
-- y las franjas horarias, ordenadas por el número de franjas horarias.
SELECT facid, SUM(slots) AS "Total slots" 
FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-09-30'
GROUP BY facid
ORDER BY SUM(slots)
*/

/*
-- 12
-- Produce a list of facilities with more than 1000 slots booked. Produce an
-- output table consisting of facility id and total slots, sorted by facility id.
--Elaborar una lista de instalaciones con más de 1000 plazas reservadas. Producir una
--tabla de salida que consiste en la identificación de la instalación y 
--el total de las franjas horarias, ordenadas por la identificación de la instalación.
SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
GROUP BY facid HAVING SUM(slots) > 1000
ORDER BY facid
*/


/*
-- 13
-- How can you produce a list of the start times for bookings for tennis
-- courts, for the date '2012-09-21'? Return a list of start time and facility
-- name pairings, ordered by the time.
-- ¿Cómo se puede elaborar una lista de las horas de inicio de las reservas para 
-- las pistas de tenis para la fecha "2012-09-21"? Devuelve una lista de 
-- emparejamientos de hora de inicio y nombre de la instalación nombre de la instalación,
-- ordenados por la hora.
SELECT cd.bookings.starttime AS start, cd.facilities.name AS name
FROM cd.facilities
JOIN cd.bookings 
ON cd.facilities.facid = cd.bookings.facid
WHERE cd.facilities.facid IN (0,1)  
AND cd.bookings.starttime BETWEEN '2012-09-21' AND '2012-09-22'
ORDER BY cd.bookings.starttime
*/


-- 14
-- How can you produce a list of the start times for bookings by members
-- named 'David Farrell'?
-- ¿Cómo se puede producir una lista de las horas de inicio de las reservas de los miembros
-- llamados "David Farrell"?
SELECT cd.bookings.starttime
FROM cd.bookings
INNER JOIN cd.members
ON cd.members.memid = cd.bookings.memid
WHERE cd.members.firstname = 'David'
AND cd.members.surname = 'Farrell'	
