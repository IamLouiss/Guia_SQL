SELECT *,
CASE
	WHEN age >= 18 THEN 'Es mayor de edad'
  ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;
-- Aca evaluamos por la columna "age" una condicion y si se cumple nos muestra una columna con el resultado
-- de la evaluacion, en este caso, para aquellos usuarios que cumplan con la condicion, nos mostraria (en la
-- columna "¿Es mayor de edad?" que nombramos con el alias) el mensaje especificado luego del THEN, para
-- el caso contario, mostramos el otro mensaje especificado en el ELSE

SELECT *,
CASE
	WHEN age >= 18 THEN TRUE
  ELSE FALSE
END AS '¿Es mayor de edad?'
FROM users;
-- Aca solo mostramos 0 o 1 para cada caso

SELECT *,
CASE
	WHEN age = 18 THEN 'Acaba de cumplir la mayoria de edad'
  WHEN age > 18 THEN 'Es mayor de edad'
  ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;
-- En esta consulta hay mas condiciones