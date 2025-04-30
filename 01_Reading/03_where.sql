SELECT * FROM users WHERE age = 30 
-- Retorna datos de la tabla users que cumplen con una condicion especifica

SELECT DISTINCT age FROM users WHERE age = 30 
-- Si tenemos campos repetidos que tengan la misma edad en la tabla users, con el distinct
-- solo retornará uno