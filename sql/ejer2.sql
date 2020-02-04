CREATE DATABASE IF NOT EXISTS videoclubcantabria;
USE videoclubcantabria;

CREATE TABLE peliculas(
Codpelicula char(5),
  Titulo char(40) UNIQUE,
  Género char(15),
  Año int,
  País char(15),
  PRIMARY KEY (CodPelicula)
);

CREATE TABLE socios(
  NumeroSocio char(5),
  DNI char(10) UNIQUE,
Nombre char(20),
Apellidos char(40),
  Direccion char(40),
  Telefono char(10),
  FechaNacimiento date,
  PRIMARY KEY ( NumeroSocio)
  
  );

CREATE TABLE prestamos(
  CodigoPrestamo int,
  NumeroSocio int,
  CodPelicula int,
PRIMARY KEY (CodigoPrestamo),
  FOREIGN KEY(NumeroSocio) REFERENCES socios,
  FOREIGN KEY(CodPelicula) REFERENCES peliculas 
  );

CREATE TABLE datos(
  CodPelicula int,
  Titulo char(40),
  Género char(10),
  Año int,
  );

INSERT INTO socios (NumeroSocio, DNI, Nombre, Apellidos, Direccion, Telefono, FechaNacimiento)
  VALUES  ('s001', '10101010A', 'Fernando', 'Alonso', 'Calle Rueda', '985332211','2002/06/01'),
          ('s002', '20202020B', 'Elmer', 'Benet', 'Avenida Castilla', '915852266', '2005/12/10'),
          ('s003', '30303030C', 'Sofia', 'Loren', 'Plaza Mallor', '942335544','2002/05/19'),
          ('s004', '40404040D', 'Mar', 'Flores', 'Calle Alegría', '914587895','2012/06/03'),
          ('s005', '50505050E', 'Tamara', 'Torres', 'Calle Perejil', '935784578','2012/06/10'),
          ('s006', '11111111F', 'Federico', 'Trillo', 'Calle Honduras', '942225544','2002/11/10'),
          ('s007', '11223344G', 'Marina', 'Castaño', 'Avenida Jeta', '916589878','2002/06/18'),
          ('s008', '72727272H', 'Diego', 'Tristan', 'Calle Galicia', '942353535','2022/06/19'),
          ('s009', '25252525J', 'Andrei', 'Shevchenko', 'Calle Milán', '915545454','2012/11/30');


INSERT INTO prestamos (CodigoPrestamo, NumeroSocio, CodPelicula)
  VALUES  (001, s001, p001),
          (002, s002, p003),
          (003, s003, p004),
          (004, s005, p006),
          (005, s007, p001),
          (006, s008, p002),
          (007, s008, p003),
          (008, s009, p001),
          (009, s004, p005),
          (010, s006, p007),
          (011, s001, p008),
          (012, s002, p009);

INSERT INTO peliculas (CodPelicula, Titulo, Género, Año, País)
  VALUES  ('p001', 'Rebelión en las Ondas', 'Comedia', 1987,''),
          ('p002', 'Rocky', 'Drama', 1987,''),
          ('p003', 'El Exorcista', 'Terror', 1987,''),
          ('p004', 'Ronin', 'Policiaca', 1987,''),
          ('p005', 'RockyII', 'Drama', 1987,''),
          ('p006', 'Cyrano de Berberac', 'Drama', 1987,''),
          ('p007', 'Rocky III', 'Drama', 1987,''),
          ('p008', 'El Resplandor', 'Terror', 1987,''),
          ('p009', 'Sin Perdón', 'Western', 1987,'');
          

