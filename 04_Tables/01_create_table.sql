CREATE TABLE persons (
	id INT,
	name VARCHAR(100),
  age INT,
  email VARCHAR(50),
  created DATE
);
-- Se coloca el nombre del atributo seguido del tipo de dato, pero en este caso
-- no se esta especificando ninguna restriccion a alguna columna de la tabla

CREATE TABLE persons2 (
	id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
  age INT,
  email VARCHAR(50),
  created DATE
);
-- En este caso creamos otra tabla especificando que los atributos "id" y "name", no pueden ser nulos,
-- lo cual indica que al añadir personas a la tabla, debemos especificar obligatoriamente el valor de
-- esos atributos, en caso contrario, nos daria error

CREATE TABLE persons3 (
	id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
  age INT,
  email VARCHAR(50),
  created DATETIME,
  UNIQUE (id)
);
-- En esta otra tabla añadimos la condicion de que el atributo "id" es unico, lo cual hace que podamos
-- evitar tener usuarios con el mismo "id", ya que el nombre, la edad o la fecha de creacion pueden llegar a
-- estar repetidos y necesitamos algo que identifique de manera unica nuestra persona

CREATE TABLE persons4 (
	id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
  age INT,
  email VARCHAR(50),
  created DATETIME,
  UNIQUE (id),
  PRIMARY KEY (id)
);
-- Con el PRIMARY KEY estamos indicando que el id es el identificador principal de la tabla
-- lo cual será importante a la hora de establecer relaciones

CREATE TABLE persons5 (
	id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	age INT,
	email VARCHAR(50),
	created DATETIME,
	UNIQUE (id),
	PRIMARY KEY (id),
  CHECK (age >= 18)
);
-- Con CHECK colocamos una restriccion en algun atributo, en esta caso colocamos que la edad
-- debe ser mayor o igual a 18, en caso de ser menor, no dejaria insertar a esa persona

CREATE TABLE persons6 (
	id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	age INT,
	email VARCHAR(50),
	created DATETIME DEFAULT CURRENT_TIMESTAMP(),
	UNIQUE (id),
	PRIMARY KEY (id),
	CHECK (age >= 18)
);
-- DEFAULT se utiliza para asignar un valor predeterminado a una columna cuando no se especifica
-- ningún valor durante una inserción. Si el campo se omite en el INSERT, automáticamente 
-- usará el valor definido en DEFAULT, en este caso, la funcion CURRENT_TIMESTAMP(), nos devuelve
-- la fecha del sistema

CREATE TABLE persons7 (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	age INT,
	email VARCHAR(50),
	created DATETIME DEFAULT CURRENT_TIMESTAMP(),
	UNIQUE (id),
	PRIMARY KEY (id),
	CHECK (age >= 18)
);
-- El AUTO_INCREMENT sirve para que, al insertar una nueva fila en la base de datos, el campo id
-- tome el valor del ultimo id mas uno si no especificamos que id queremos que tenga esa fila.
-- Si por ejemplo la fila con el mayor id es 5 e insertamos una nueva fila o persona en este caso,
-- sin especificar el id, con el AUTO_INCREMENT tomaria el valor de 6 que es el que le sigue