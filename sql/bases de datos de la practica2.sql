/* creando las bases de datos */
  CREATE DATABASE IF NOT EXISTS practica2sql;
  USE practica2sql;

CREATE TABLE Ciudad (
  nombre Varchar(30) PRIMARY KEY,
  población Integer
);

CREATE TABLE Persona (
  nombre Varchar(30) PRIMARY KEY,
  calle Varchar(30),
  ciudad Varchar(30)
 );

CREATE TABLE Compañia (
  nombre Varchar(30) PRIMARY KEY,
  ciudad Varchar(30)
);

CREATE TABLE Trabaja (
  persona Varchar(30) PRIMARY KEY,
  compañia Varchar(30),
  salario Integer
);

CREATE TABLE Supervisa (
  supervisor Varchar(30),
  persona Varchar(30),
  PRIMARY KEY (supervisor,persona)
);

