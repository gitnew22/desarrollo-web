CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;

CREATE TABLE libro(
claveLibro varchar(20),
titulo varchar(30),
  idioma varchar(20),
  formato varchar(10),
  categria varchar(10),
  claveEditorial varchar(10),
  PRIMARY KEY(claveLibro)
);

CREATE TABLE tema(
claveTema varchar(10),
  nombre varchar(20),
  PRIMARY KEY(claveTema)
);

CREATE TABLE autor(

);