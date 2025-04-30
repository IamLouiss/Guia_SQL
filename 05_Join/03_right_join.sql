SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;
-- Con el RIGHT JOIN ocurre lo mismo que con el LEFT JOIN pero al reves.
-- Devolveria todos los campos de la tabla de la derecha tengan o no
-- relacion con campos de la tabla de la izquierda. Si tienen relacion,
-- muestra los campos de la tabla de la izquierda con su respectivo dato y los que no, los
-- rellena con NULL

SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;
-- Una consulta mostrando solo los campos "name" y "dni_number" como hicimos
-- en los anteriores JOIN

SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;
-- Misma consulta que la anterior pero con las tablas invertidas

SELECT users.name, languages.name
FROM users
RIGHT JOIN users_languages ON users_languages.user_id = users.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id;
-- RIGHT JOIN de las tablas que tienen relacion N:N