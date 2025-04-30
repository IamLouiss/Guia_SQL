"""
Aca definimos una funcion a la cual se le puede pasar un parametro, pero esto
es peligroso porque pueden usar la tecnica de SQL INJECTION para enviar como parametro
una subconsulta que haga cambios en la base de datos, elimine tablas, etc.

Para evitar esto, se coloca "%s" que indica que en esa query va a ir un parametro
y luego en el execute se manda la query y los parametros como tupla, de esta forma
podemos protegernos de esta tecnica.

Hay que tener en cuenta que cada conector tiene su forma de especificar como van
los parametros.
""" 


import mysql.connector


def print_user(user):

  config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "hello_mysql",
    "user": "root",
    "password": "Luis2706.."
  }
  
  connection = mysql.connector.connect(**config)
  cursor = connection.cursor()
  
  query = "SELECT * FROM users WHERE name=%s;"
  print(query)
  cursor.execute(query, (user,))
  result = cursor.fetchall()

  for row in result:
    print(row)

  cursor.close()
  connection.close()


print_user("Luis")
# print_user("'; UPDATE users SET age = '15' WHERE user_id = 1; --")