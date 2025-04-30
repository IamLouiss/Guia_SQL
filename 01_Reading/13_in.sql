SELECT * FROM users WHERE name IN ('luis');
-- Retorna los usuarios que tengan como nombre 'luis', 'Luis', 'LUIS', etc. Da igual que
-- este alguna letra en minuscula o mayuscula pero deben coincidir la letras exactamente, ya que
-- si buscamos 'lui' no devolveria nada si no hay ningun usuario que tenga como nombre 'lui'

SELECT * FROM users WHERE name IN ("pedro", 'luis');
-- En este caso retornaria los usuarios que tengan como nombre 'luis' y 'pedro'