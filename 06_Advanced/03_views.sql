CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;
-- De esta forma creamos una vista la cual nos sirve para mostrar los datos
-- de una forma especifica sin tener que escribir el SELECT y repetir consultas
-- complejas. Es como tener una consulta especifica guardada y luego solamenta
-- la usas sin tener que escribirla completa

SELECT * FROM v_adult_users;
-- De esta forma mostramos la vista, sin tener que escribir el SELECT completo
-- de arriba, solamente escribirmos el SELECT de la vista. Si tenemos una consulta
-- compleja con JOINS, ORDER BY o calculos especificos, creamos la vista y solo
-- hacemos la consulta de la vista, la cual ya tiene toda la consulta predefinida
-- sin tener que escribirla de nuevo

DROP VIEW v_adult_users;
-- De esta forma eliminamos la vista