CREATE DATABASE pruebas;
USE pruebas;
CREATE TABLE editorial(
  nombre_e char(20) PRIMARY KEY,
  direccion char(50) NOT NULL,
  ciudad char(15),
  país char(15)
  );

CREATE TABLE libro(
  código char(3),
  titulo char(50) UNIQUE,
  idioma char(25),
  nombre_e char(20),
  PRIMARY KEY (código),
  FOREIGN KEY(nombre_e) REFERENCES editorial ( nombre_e)
  ON DELETE SET NULL
  ON UPDATE CASCADE);
/*varios value en la misma instruccion*/
INSERT INTO editorial (nombre_e, direccion, ciudad, país)
  VALUES ('cantabria', 'calle alonso', 'santander', 'españa'),
          ('sm', 'calle cadiz', 'santander', 'españa'),
          ('anaya', 'calle se', 'santander', 'españa');
/*uno a uno value en dos instrucciones diferentes*/
INSERT INTO libro (código, titulo, idioma, nombre_e)
  VALUE ('pil', 'los pilares de la tierra', 'español', 'sm');
INSERT INTO libro  VALUE ('idi', 'idiot', 'ruso', 'anaya');

DELETE FROM editorial WHERE nombre_e='sm';

SELECT l.idioma FROM libro l WHERE l.titulo='idiot';