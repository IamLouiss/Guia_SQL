SELECT * FROM users WHERE init_date is NULL;
-- Retorna las filas de la tabla usuario donde el campo init_date sea nulo

SELECT * FROM users WHERE init_date is NOT NULL;
-- Retornaría las filas de la tabla usuario donde el campo init_date no sea nulo

SELECT * FROM users WHERE init_date is NULL AND age = 30;
-- En este caso añadimos otra condicion con AND para utilizar mas sentencias y 
-- lograr una consulta mas especifica