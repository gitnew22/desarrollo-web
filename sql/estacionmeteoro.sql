CREATE DATABASE estacionMeteo;
USE estacionMeteo;

CREATE TABLE estacion(
id mediumint UNSIGNED,
  latitud varchar(14),
  longitud varchar(15),
  altitud mediumint,
  PRIMARY KEY(id)
);

CREATE TABLE muestra(
idEstacion mediumint UNSIGNED,
  fecha date,
  temMinima tinyint,
  temMaxima tinyint,
  precipitaciones smallint UNSIGNED,
  humedadMin tinyint UNSIGNED,
  humedMax tinyint UNSIGNED,
  velocidadVientoMin smallint UNSIGNED,
  velocidadVientoMax smallint UNSIGNED,
  PRIMARY KEY (idEstacion,fecha),
  FOREIGN KEY (idEstacion) REFERENCES estacion(id) 
);