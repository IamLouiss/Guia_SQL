/*
Un trigger (o disparador) es un procedimiento automático
que se ejecuta en la base de datos cuando ocurre un evento
específico (INSERT, UPDATE o DELETE) sobre una tabla.
Su función principal es reaccionar a cambios en los datos.

La forma de crearlo es:

DELIMITER //

CREATE TRIGGER nombre_del_trigger
[BEFORE/AFTER] [INSERT/UPDATE/DELETE] ON tabla
FOR EACH ROW
BEGIN
  -- Cuerpo del trigger
  -- Puedes acceder a los valores antiguos y nuevos con:
  -- OLD.columna (para UPDATE/DELETE)
  -- NEW.columna (para INSERT/UPDATE)
    
  -- Ejemplo de lógica:
  IF NEW.columna <> OLD.columna THEN
     -- Acción a realizar
  END IF;
END;

//

DELIMITER ;

-- DELIMITER se usa para cambiar el delimitador de instrucciones SQL, que por defecto es ;
-- Se utiliza cuando se define un bloque de código como un procedimiento donde se requieren múltiples 
-- instrucciones SQL terminadas con punto y coma dentro de un mismo bloque.
*/

DELIMITER  |

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_id, email)
    VALUES (OLD.user_id, OLD.email);
	END IF;
END;

|

DELIMITER  ;

-- Aca creamos un trigger para la tabla "users" el cual, cuando detecta que hay un cambio
-- de email, guarda el email viejo en otra tabla llamada "email_history". En este caso
-- usamos como delimitador el caracter "|" pero se pueden usar otros tambien

UPDATE users SET email = 'luismunoz@gmail.com' WHERE user_id = 1;
-- Al hacer este UPDATE, el trigger se ejecuta y guarda el user_id en la tabla
-- y el email antiguo en la tabla "email_history"

SELECT * FROM email_history;
-- Al consultar los datos de la tabla, visualizariamos una nueva fila con datos
-- del usuario al cual se le actualizo el email

DROP TRIGGER tg_email;
-- De esta forma borramos el trigger