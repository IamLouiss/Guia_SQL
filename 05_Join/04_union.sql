SELECT users.user_id, dni.user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT users.user_id, dni.user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;
-- Para consultar un FULL JOIN, hacemos la union del LEFT JOIN con el RIGHT JOIN 