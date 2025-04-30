INSERT INTO users (user_id, name, surname) VALUES (7, 'Maria', 'Lopez');
-- Inserta en la tabla una nueva fila que sería un nuevo usuario con los datos especificados
-- Si el user_id es la primary key, es unico y por lo tanto no pueden haber user_id repetidos
-- Los campos que puedan ser nulos no es necesario que se especifiquen como nulos porque ya automaticamente
-- se marcan como nulos si no se les especifica ningun valor, los que no pueden ser nulos deben
-- ser especificados al insertar el usuario

INSERT INTO users (surname) VALUES ('Lopez');
-- En este caso nos daria error ya que el campo nombre en la tabla esta definido como no nulo
-- y debe ser especificado al insertar un nuevo usuario

INSERT INTO users (name, surname) VALUES ('Maria', 'Lopez');
-- En este caso como el user_id es auto incremental, si no se especifica, tomaria el valor siguiente
-- de la fila anterior, por ejemplo, si el user_id de la fila anterior era 8, este automaticamente
-- al no ser especificado, tomaria el valor de 9

INSERT INTO users (user_id, name, surname) VALUES (11, 'Marcos', 'Lopez');
-- Si nuestro ultimo usuario tiene el user_id de 9, por ejemplo, y insertamos un nuevo usuario con
-- un user_id de 11, esto no daría problema si la insercion la hace el administrador de la base de datos
-- el cual tiene todo los permisos, pero quedaria un hueco ya que el user_id es un valor auto incremental
-- en este caso, y si insertamos el siguiente usuario sin especificar el user_id, este se insertaria
-- con user_id de 12 que es el siguiente numero despues del user_id del anterior usuario