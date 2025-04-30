ALTER TABLE persons8
ADD surname VARCHAR(150);
-- Utilizando ALTER TABLE con ADD podemos añadir un nuevo campo a la tabla

ALTER TABLE persons8
RENAME COLUMN surname TO description;
-- Con RENAME COLUMN cambiamos el nombre de una columna de la tabla
-- RENAME COLUMN -nombre_actual- TO -nuevo_nombre-;

ALTER TABLE persons8
MODIFY COLUMN description VARCHAR(250);
-- Con MODIFY COLUMN podemos hacerle modificaciones a las propiedades del campo especificado
-- en este caso aumentamos su tamaño

ALTER TABLE persons8
MODIFY COLUMN description INT NOT NULL UNIQUE;
-- Con MODIFY COLUMN podriamos cambiar el tipo de dato y añadir propiedades como que
-- no sea nula, o que sea unica, etc

ALTER TABLE persons8
DROP COLUMN description;
-- Con DROP COLUMN borramos la columna de la tabla