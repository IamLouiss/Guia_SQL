SELECT CONCAT('Nombre: ', name, ', Apellido: ', surname) AS 'Nombre completo' FROM users;
-- Concatena en una sola columna varios campos de un usuario y se le puede agregar
-- cadenas de texto como en este caso "Nombre: " para identificar los datos,
-- ademas utilizamos el "AS" para colocarle un alias a la columna que retorna