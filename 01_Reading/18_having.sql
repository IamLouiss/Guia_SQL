SELECT COUNT(age) FROM users;
-- Esta consulta nos retornaria la cantidad de usuarios que tengan edad distinta de null

SELECT COUNT(age) FROM users HAVING COUNT(age) > 4;
-- Usando el HAVING, hacemos que la consulta solo retorne si es mayor a 4 (ya que es el valor especificado) 
-- En caso contrario, no nos muestra nada. De esta forma restringimos a que solo nos muestre resultados
-- si cumple con la condicion especificada en el HAVING

SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 5;
-- La siguiente sentencia SQL muestra el número de clientes en cada país
-- incluyendo solamente los países con más de 5 clientes

SELECT COUNT(age) FROM users WHERE COUNT(age) > 4;
-- El HAVING se utiliza ya que no podemos usar el WHERE con funciones agregada, por lo tanto
-- esta consulta daría error