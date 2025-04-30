SELECT * FROM users WHERE email LIKE '%gmail.com';
-- Con el LIKE buscamos datos que contengan lo que se especifica, en este caso buscamos los campos que
-- tengan cualquier cosa al inicion y terminen con "gmail.com"

SELECT * FROM users WHERE email LIKE 'luis%';
-- En este caso buscariamos los usuarios que en el campo email tengan informacion que comience
-- con "luis" y termine con cualquier cosa

SELECT * FROM users WHERE email LIKE '%@%';
-- En este caso usuarios que en el campo email tengan informacion que comience con cualquier cosa
-- luego venga un "@" y termine con cualquier cosa