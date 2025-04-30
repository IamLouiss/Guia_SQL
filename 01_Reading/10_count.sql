SELECT COUNT(*) FROM users;
-- Retorna el numero de filas que devolveria la consulta, si usamos el "*" y tenemos
-- 10 filas en nuestra tabla, COUNT retornaria 10

SELECT COUNT(age) FROM users;
-- En este caso retornaria el numero de usuarios que devolveria la consulta especificando
-- el campo age