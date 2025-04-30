UPDATE users SET age = '21';
-- Hay que tener cuidado cuando se haga un UPDATE o un DELETE, ya que de la forma en la que esta
-- escrito, actualizaría todas las edades de todos los usuarios de la tabla a 21, para evitar esto,
-- siempre debemos usar el WHERE para especificar cual usuario queremos modificar.
-- A menos que queramos cambiar todos las edades o otro campo especifico por alguna razon
-- Si esta activado el modo seguro, esto daría error, como anotacion

UPDATE users SET age = '21' WHERE user_id = 12;
-- De esta manera especificamos a cual usuario queremos cambiarle la edad, en este caso, al que tenga
-- el user_id de 12

UPDATE users SET age = '20', init_date = '2020-10-12' WHERE user_id = 11;
-- De esta forma actualizamos varios campos
-- Ademas de que, si pasamos la edad como cadena de texto con las comillas, la base de datos
-- identifica que este campo es entero y automaticamente lo transforma a entero