CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;

CREATE TABLE libro(
claveLibro varchar(20),
titulo varchar(30),
  idioma varchar(20),
  formato varchar(10),
  categoria varchar(10),
  claveEditorial varchar(10),
  PRIMARY KEY(claveLibro)
);

CREATE TABLE tema(
claveTema varchar(10),
  nombre varchar(20),
  PRIMARY KEY(claveTema)
);

CREATE TABLE autor(
claveAutor varchar(10),
  nombre varchar(20),
  PRIMARY KEY(claveAutor)
);
CREATE TABLE editorial(
claveEditorial varchar(10),
  nombre varchar(20),
  direccion varchar(40),
  telefono varchar(10),
  PRIMARY KEY(claveEditorial)
);
CREATE TABLE ejemplar(
clavelibro varchar(10),
  numeroOrden varchar(20),
  edicion varchar(40),
  ubicacion varchar(10),
  PRIMARY KEY( clavelibro)
);
CREATE TABLE socio(
claveSocio varchar(10),
  nombre varchar(20),
  direccion varchar(40),
  telefono varchar(10),
  categoria varchar(20),
  PRIMARY KEY( claveSocio)
);
CREATE TABLE trata_sobre(
claveLibro varchar(20),
  clave_tema varchar(20),
  PRIMARY KEY(claveLibro, clave_tema),
  FOREIGN KEY (claveLibro) REFERENCES libro,
  FOREIGN KEY(clavetema) REFERENCES tema
 );
CREATE TABLE escrito_por(
claveLibro varbinary(20), 
  claveautor varchar(20),
  PRIMARY KEY(claveLibro, claveautor),
  FOREIGN KEY(claveLibro)REFERENCES libro,
  FOREIGN KEY(claveautor)REFERENCES autor
);
