DELETE FROM users WHERE user_id = 7;
-- De esta forma borramos un usuario de la tabla especificando cual es
-- Aca ocurre lo mismo que con el update, debemos especificar cual usuario exactamente es
-- ya que podriamos borrarlos todos al no especificar
-- De igual forma, esta activado el modo seguro que evita que esto pase y nos lanza un error