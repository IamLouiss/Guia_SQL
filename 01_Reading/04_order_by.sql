SELECT * FROM users ORDER BY age;
-- Retorna los datos ordenados por el parametro especificado con el orden ascendente por defecto

SELECT * FROM users ORDER BY age ASC;
-- Esto daría el mismo resultado que el de arriba

SELECT * FROM users ORDER BY age DESC;
-- Retorna con orden descendente

SELECT * FROM users WHERE email='luis@gmail.com' ORDER BY age DESC;
-- Retorna con orden descendente añadiendo el WHERE para acotar nuestra busqueda, esto
-- trae todos usuarios de la tabla que tengan el email especificado y los ordena por edad