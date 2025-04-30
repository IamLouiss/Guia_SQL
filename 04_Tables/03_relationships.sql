CREATE TABLE dni (
	dni_id int AUTO_INCREMENT PRIMARY KEY,
  dni_number int NOT NULL,
  user_id int,
  UNIQUE(dni_id),
  FOREIGN KEY(user_id) REFERENCES users(user_id)
);

-- Relacion 1:1 creando una tabla dni para almacenar los dni de los usuarios que estan
-- en la tabla users. En este caso, cada usuario tiene un dni y cada dni pertenece a un
-- solo usuario

---------------------------------------------------|---------------------------------------------------------

CREATE TABLE companies (
	company_id int AUTO_INCREMENT PRIMARY KEY,
  name varchar(100) NOT NULL
);

ALTER TABLE users
ADD company_id int;

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY (company_id) REFERENCES companies(company_id);

-- Relacion 1:N creando una nueva tabla de compañias y añadiendo con el ALTER TABLE ADD
-- un nuevo campo que será el id de la compañia para la cual trabajará un usuario.
-- En este caso una compañia puede tener varios usuarios pero un usuario pertenece a una
-- compañia. Luego se añade la foreign key que hace referencia al campo company_id de la tabla
-- companies. Con el ADD CONSTRAINT le ponemos un nombre a la foreign key

---------------------------------------------------|---------------------------------------------------------

CREATE TABLE languages (
	language_id int AUTO_INCREMENT PRIMARY KEY,
  name varchar(100) NOT NULL
);

CREATE TABLE users_languages (
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
  user_id int NOT NULL,
  language_id int NOT NULL,
  FOREIGN KEY(user_id) REFERENCES users(user_id),
  FOREIGN KEY(language_id) REFERENCES languages(language_id),
  UNIQUE (user_id, language_id)
);

-- Relacion N:N creando una nueva tabla de lenguajes (de programacion en este ejemplo) y luego
-- se crea otra tabla de relacion con el nombre de las dos tablas que queremos relacionar,
-- en este caso los usuarios con los lenguajes. Esta tabla es la que guarda tanto el id del usuario
-- como el id del lenguaje y luego se crean dos claves foraneas con la propiedad de que sean unicas
-- que hacen referencia tanto al user_id de la tabla de users, como al language_id de la tabla languages.
-- De esta forma podemos modelar que un usuario puede aprender varios lenguajes de programacion pero a la
-- vez un lenguaje de programacion puede ser aprendido por varios usuarios

-- Tambien esta la relacion de autoreferencia que indica que un registro de la tabla A
-- puede relacionarse con otro registro de la tabla A

------------------------------ Datos insertados en las tablas para pruebas ------------------------------------

INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
INSERT INTO dni (dni_number) VALUES (44444444);

INSERT INTO companies (name) VALUES ('MoureDev');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;

INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('COBOL');

INSERT INTO users_languages (user_id, language_id) VALUES (1, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 5);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 5);
-- Hacer dos veces alguna de estas instrucciones daria error porque el par de campos 
-- (user_id, language_id) estan especificados como unicos