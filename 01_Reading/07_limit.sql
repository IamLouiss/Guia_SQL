SELECT * FROM users LIMIT 2;
-- Retorna usuarios con un limite, en este caso de toda la tabla de usuarios solo traería 2 filas

SELECT * FROM users WHERE NOT email = 'luis@gmail.com' OR age = 30 LIMIT 2;
-- Se pueden ir combinando muchas sentencias en las consultas