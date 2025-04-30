SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;
-- El LEFT JOIN en este caso, devolveria todos los campos de la tabla de la izquierda
-- tengan o no tengan relacion con campos de la tabla de la derecha. Si tienen relacion,
-- muestra los campos de la tabla de la derecha con su respectivo dato y los que no, los
-- rellena con NULL

-- La tabla de la izquierda la interpretamos como la tabla que consultamos, en
-- este caso "users" y la tabla de la derecha es con la que hacemos el JOIN en 
-- este caso "dni"

SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;
-- Por ejemplo, en esta consulta, como tomamos como tabla de la izquierda la tabla "dni"
-- mostraria todos las filas de la tabla "dni" y solamente los nombres de los usuarios de
-- la tabla "users" que es la derecha. Los usuarios que no tengan asignados ningun dni,
-- colocara null en el campo "dni_number" 

SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;
-- Con esta consulta mostramos solo datos especificos para que se vea mas claro
-- el LEFT JOIN

SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users_languages.user_id = users.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;
-- Consulta utilizando LEFT JOIN de las tablas que tienen relacion N:N