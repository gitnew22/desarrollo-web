USE practica2sql;
/* 1 indicar el numero de ciudades que hay en la tabla ciudades*/
SELECT COUNT(*) FROM ciudad c;
/* 2 indicar el nombre de las ciudades que tengan una poblacion por encima de la poblacion media*/
  SELECT c.nombre, c.población FROM ciudad c WHERE c.población>(SELECT AVG( c.población) FROM ciudad c) ;
/* 3 indicar el nombre de las ciudades que tengan una poblacion por debajo de la poblacion media*/
  SELECT c.nombre, c.población FROM ciudad c WHERE c.población<(SELECT AVG(c.población) FROM ciudad c); 
/* 4 indicar el nombre de la ciudad con la poblacion maxima*/
  SELECT c.nombre,c.población FROM ciudad c WHERE c.población=(SELECT MAX(c.población) FROM ciudad c); 
/* 5 indicar el nombre de la ciudad con la poblacion minima*/
  SELECT c.nombre,c.población FROM ciudad c WHERE c.población=(SELECT MIN(c.población) FROM ciudad c);
/* 6 indicar el numero de ciudades que tengan una poblacion por encima de la poblacion media*/
  SELECT COUNT(*) FROM ciudad c WHERE c.población>(SELECT AVG(c.población) FROM ciudad c);
/* 7 indicarme el numero de personas que viven en cada ciudad*/
  SELECT COUNT(*),p.ciudad FROM persona p GROUP BY p.ciudad ; 
/* 8 utilizando la tabla trabaja indicarme cuantas personas trabajan en cada una de las compañias*/
  SELECT COUNT(*),t.compañia FROM trabaja t GROUP BY t.compañia;
/* 9 indicarme la compañia que mas trabajadores tiene*/   
SELECT MAX(numero) FROM (SELECT COUNT(t.persona) numero ,t.compañia FROM trabaja t GROUP BY t.compañia) c1;
/* 10 indicarme el salario de cada una de las compañias*/
SELECT AVG( t.salario),t.compañia FROM trabaja t GROUP BY t.compañia ;
/* 11 listarme el nombre de las personas y la poblacion de la ciudad donde vive*/
SELECT p.nombre, c.población FROM ciudad c JOIN persona p ON c.nombre = p.ciudad; 
/* 12 listar el nombre de las personas, la calle donde vive y la poblacion de la ciudad donde vive*/
SELECT p.nombre, p.calle, c.población FROM ciudad c JOIN persona p ON c.nombre = p.ciudad;
/* 13 listar el nombre de las personas, la ciudad donde vive y la ciudad donde esta la compañia
  para la que trabaja*/
SELECT p.nombre, p.ciudad, c.ciudad
  FROM persona p 
  LEFT JOIN trabaja t ON p.nombre= t.persona
  LEFT JOIN compañia c ON t.compañia=c.nombre; 
/* 15 listarme el nombre de la persona y el nombre de su supervisor*/
  SELECT p.nombre persona, s.supervisor FROM persona p JOIN supervisa s ON p.nombre= s.persona; 
/* 16 listarme el nombre de la persona,el nombre de su supervisor y las ciudades donde residen
  cada uno de ellos*/
  SELECT p.nombre, s.supervisor, p.ciudad ciudaddepersona, p1.ciudad ciudaddesupervisor 
  FROM persona p JOIN supervisa s ON p.nombre= s.persona 
  JOIN persona p1 ON p1.nombre= s.supervisor; 
  /* 17 indicarme el numero de ciudades distintas que hay en la tabla compañia*/ 
  SELECT DISTINCT COUNT( c.ciudad) FROM compañia c;
  /* 18 indicarme el numero de ciudades distintas que hay en la tabla personas*/
  SELECT DISTINCT COUNT(p.ciudad) FROM persona p;
  /* 19 indicarme el nombre de las personas que trabajan en fagor*/
  SELECT t.persona FROM trabaja t WHERE t.compañia='fagor';
  /* 20 indicarme el nombre de las personas que no trabajan en fagor*/ 
  SELECT t.persona FROM trabaja t WHERE t.compañia!='fagor'; 
  /* 21 indicarme el numero de personas que trabajan para indra*/
  SELECT COUNT(*) FROM trabaja t WHERE t.compañia='indra'; 
  /* 22 indicarme el numero de personas que trabajan para fagor o para indra*/
  SELECT t.persona, t.compañia FROM trabaja t WHERE t.compañia='fagor' OR t.compañia='indra';
  /* 23 listar la poblacion donde vive cada persona, sus salario, su nombre y la compañia para 
    la que trabaja. ordenar la salida por nombre de la persona y por salario de forma descendente*/
  SELECT p.ciudad, t.salario, p.nombre, t.compañia FROM ciudad c JOIN  persona p ON c.nombre= p.ciudad  LEFT JOIN trabaja t
  ON p.nombre= t.persona GROUP BY p.nombre ORDER BY p.nombre AND t.salario DESC;   