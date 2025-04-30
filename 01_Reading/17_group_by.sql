-- El group by agrupa filas que tienen los mismos valores en filas de resumen, si tenemos varias edades
-- y algunas son repetidas, nos devolveria una sola fila con la edad que se repite

SELECT * FROM users GROUP BY age;
-- Esto nos daria error ya que necesitamos agrupar por un criterio especifico

SELECT COUNT(age), age FROM users GROUP BY age;
-- Aca agrupariamos las edades y con el COUNT muestra cuantas edades hay repetidas con un mismo valor
-- Ademas, mostramos en otra columna la edad para ver mejor el resultado

SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC;
-- Aca le añadimos el ORDER BY para ordenar las filas ascendentemente por la edad

SELECT COUNT(age), age FROM users WHERE age > 20 GROUP BY age ORDER BY age ASC;
-- Se pueden añadir mas sentencias como el WHERE para obtener resultados mas especificos