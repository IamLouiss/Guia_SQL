SELECT name, surname, IFNULL(age, 0) FROM users;
-- En esta consulta, usamos la funcion IFNULL para que, en caso de que el campo
-- sea nulo, es decir, no tenga ningun valor, muestre un 0 en esa columna

SELECT name, surname, IFNULL(age, 0) AS age FROM users;
-- Se usa el AS para colocarle un alias a la columna para que no se muestre en el resultado de
-- la consulta "IFNULL(age, 0)"

SELECT name, surname, ISNULL(age) FROM users;
-- Con ISNULL muestra en la columna 1 si el campo es nulo o 0 si no lo es