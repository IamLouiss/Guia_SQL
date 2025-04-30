CREATE INDEX idx_name ON users(name);
-- Los indices nos sirven para optimizar las consultas sacrificando mas
-- espacio, es decir, podemos tener una lectura mas rapida, a cambio de una
-- escritura mas lenta y mas consumo de memoria. En este caso, creamos un indice
-- para el campo "name" de la tabla users, de manera que, si hacemos muchas consultas
-- por el nombre, en la tabla users, serían mas rapidas

CREATE UNIQUE INDEX idx_name ON users(name);
-- Aca estariamos especificando que los indices sean unicos

CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);
-- De esta forma podriamos asignarle el indice a varios campos de la tabla
-- Esto seria un indice compuesto