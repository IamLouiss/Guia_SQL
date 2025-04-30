DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END;
//
DELIMITER ;

-- De esta forma creamos un stored procedure(procedimientos almacenados), el 
-- cual sirve como "funciones guardadas" precompiladas que luego puedes ejecutar

CALL p_all_users;
-- De esta forma lo ejecutamos

DELIMITER //
CREATE PROCEDURE p_age_users(IN age int)
BEGIN
	SELECT * FROM users WHERE age = age;
END;
//
DELIMITER ;

-- A los procedimientos almacenados podemos colocarle parametros. En este caso
-- le colocamos el parametro "age" para consultar solo los usuarios que tengan esa
-- edad especificada. Sin embargo, a pesar de que esto no daría error, no funcionaria
-- bien ya que le colocamos como nombre del parametro, el mismo nombre que tiene el
-- el campo en la tabla "users"

DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END;
//
DELIMITER ;

-- De esta forma si funcionaria correctamente

CALL p_age_users(30);
-- Aca ejecutamos el procedimiento especificandole la edad y nos mostraria
-- solamente los usuarios que tengan la edad de 30

DROP PROCEDURE p_age_users;
-- De esta forma eliminamos el procedimiento