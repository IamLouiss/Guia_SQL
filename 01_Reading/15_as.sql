SELECT name, init_date AS 'Fecha de inicio en programacion' FROM users WHERE age BETWEEN 10 AND 20;
-- Con el AS colocamos un alias a la columna para que en la consulta salga con el nombre
-- que colocamos, en este caso el "init_date" aparecería en la consulta como
-- "Fecha de inicio en programacion"

SELECT name, init_date AS "Fecha de inicio en programacion" FROM users WHERE age BETWEEN 10 AND 20;
-- Tambien pueden escribirse cadenas de texto con las comillas dobles