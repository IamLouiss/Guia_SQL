SELECT * FROM users
INNER JOIN dni;
-- INNER JOIN para las tablas que tienen relacion 1:1.
-- Esto nos traeria todos los datos de ambas tablas y se veria algo desordenado

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;
-- Esta sería la forma donde solo nos mostaría los usuarios de la tabla "users"
-- que corresponden a un dni en la tabla "dni", es decir, los datos que son
-- comunes en ambas tablas. Nunca nos va a traer usuarios que no tengan dni, ni
-- los dni que no tengan usuarios asignados

SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;
-- En la gran mayoria de motores de bases de datos, escribir INNER JOIN es lo mismo
-- que escribir solamente JOIN

SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;
-- Se pueden usar las clausulas antes vistas para formar una consulta mas compleja
-- y manipular los datos devueltos como contarlos, ordenarlos, agruparlos, etc

SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;
-- O tambien mostrar unicamente datos especificos de lo que nos devuelve la consulta.
-- En este caso los campos "name" y "dni_number"

SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;
-- Este INNER JOIN es para las tablas que guardan relacion 1:N. En este caso puede
-- mostrar ciertos datos repetidos ya que varios usuarios pueden trabajar en una misma
-- compañia

SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;
-- Si hacemos la consulta haciendo el INNER JOIN de companies a users, en vez de users
-- a companies como se hacia en la anterior, nos mostraria primero los datos de companies
-- y luego los datos de users. Cambiar el orden de la sentencia seguida del ON
-- "users.company_id = companies.company_id;" -> "companies.company_id = users.company_id;"
-- no altera el orden en que se muestran los datos

SELECT companies.name, users.name FROM companies
JOIN users
ON users.company_id = companies.company_id;
-- En este caso hacemos el mismo JOIN pero solo mostramos el nombre de la compañia
-- y de los usuarios. Se especifica "companies.name" y "users.name" ya que ambas
-- tablas tienen el campo con nombre "name"

SELECT *
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;
-- En el caso de las tablas que tienen relacion N:N la sentencia es mas larga ya
-- que debemos hacer dos INNER JOIN porque hay una tabla intermedia que nos sirve
-- para modelar esta relacion

SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;
-- Con este sentencia mostramos solo los campos "name" de ambas tablas para que
-- los datos sean mas legibles omitiendo los otros campos

SELECT users.name, languages.name
FROM users
JOIN users_languages ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;
-- Aca el FROM se hace desde la tabla users y da el mismo resultado