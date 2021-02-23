--##########
--ORDER BY
--##########--1 Mostrar el nombre y el apellido paterno de todos los clientes ordenados por apellido de A-Z
select first_name, last_name 
from customer 
order by last_name asc;

--2 Mostrar el nombre y el apellido paterno de todos los clientes ordenados por apellido de Z-A
select first_name, last_name 
from customer 
order by last_name desc;

--3 Mostrar el nombre y el apellido paterno de todos los clientes por nombre de A-Z y por apellido de Z-A
select first_name, last_name 
from customer
order by first_name asc, last_name desc; 

--4 Mostrar un conjunto de datos que cumplan los siguientes parámetros
-- a Debe mostrar el nombre y su longitud de caracteres de cada cliente. La longitud debe identificarse con el nombre de len. Tip: La función LENGTH() recibe una cadena de caracteres y devuelve la longitud de esa cadena
select first_name as nombre, LENGTH(first_name) as len 
from customer;
-- b La lista de datos debe estar ordenada por la longitud de caracteres, de mayor a menor
select first_name as nombre, LENGTH(first_name) as len 
from customer
order by len desc;

--##########
--WHERE
--##########

--1 De la tabla de clientes de la base de datos demo, muestra el apellido paterno y el nombre de todos los clientes cuyo nombre sea Jamie
select last_name, first_name 
from customer
where first_name = 'Jamie';

--2 De la tabla de clientes, muestra el apellido paterno y el nombre de todos los clientes cuyo nombre sea Jamie y el apellido paterno sea Rice
select last_name, first_name 
from customer
where first_name = 'Jamie' and last_name = 'Rice';

--3 De la tabla de clientes, muestra el nombre y el apellido paterno de todos los clientes cuyo apellido sea Rodriguez o su nombre sea Adam
select first_name, last_name
from customer
where last_name = 'Rodriguez' or first_name = 'Adam';

--4 De la tabla de clientes, muestra el nombre y el apellido de todos los clientes cuyo nombre sea Ann o Anne o Annie
select first_name, last_name
from customer
where first_name = 'Ann' or first_name = 'Anne' or first_name = 'Annie';

--5 De la tabla de clientes, muestra el nombre y el apellido de todos los clientes cuyo nombre empiece con Ann
-- A) El operador % es un comodín para especificar una coincidencia con cualquier cadena de caracteres
select first_name, last_name
from customer
where first_name like 'Ann%';

--6 De la tabla clientes, muestra el nombre y la longitud de caracteres del nombre de todos los clientes cuyo nombre empiece con A y la longitud de caracteres de su nombre esté entre 3 y 5 caracteres. Ordenados por la cantidad de caracteres
-- A) La función LENGTH() nos devuelve el número de caracteres de un string especificado
select first_name, LENGTH(first_name) as len
from customer
where first_name like 'A%' and LENGTH(first_name) between 3 and 5
order by len asc;


--7 De la tabla de clientes, muestra el nombre y el apellido de todos los clientes cuyo nombre empiece con Bra y su apellido no sea Motley
select first_name, last_name 
from customer
where first_name like 'Bra%' and last_name != 'Motley';