SELECT * FROM users WHERE NOT age = 30;
-- Niega la condicion y me retorna los usuarios que no tengan 30 años de edad

SELECT * FROM users WHERE NOT email = 'luis@gmail.com' AND age = 20;
-- Retorna los usuarios que no tengan el email especificado y que tengan la edad de 20 años

SELECT * FROM users WHERE NOT email = 'luis@gmail.com' OR age = 30;
-- Retorna los usuarios que cumplan con una condicion o con la otra