USE ciclistas;

/* consultas de seleccion*/

/* 1 listar la edades de los ciclistas (sin repetidos)*/
  SELECT DISTINCT c.edad FROM ciclista c; 
  /* 2 listar las edades de los ciclistas de artiach*/
    SELECT c.edad, c.nomequipo FROM ciclista c WHERE c.nomequipo="artiach"; 
/* 3 listar las edades de los ciclistas de artiach o de amore vita*/
  SELECT c.edad, c.nomequipo FROM ciclista c WHERE c.nomequipo="artiach" OR c.nomequipo="amore vita"; 
  /* 4 listar los dorsales de los ciclistas cuya edad sea menor que 25 o mayor que 30*/
    SELECT c.dorsal, c.edad  FROM ciclista c WHERE c.edad <25 OR c.edad>30; 
/* 5 listar los dorsales de los ciclistas cuya edad este entre 28 y 32 y ademas que solo sean de banesto*/
  SELECT c.dorsal, c.nomequipo FROM ciclista c WHERE c.edad BETWEEN 28 AND 32 AND c.nomequipo="banesto"; 
  /* 6 indicarme el nombre de los ciclistas que el numero de caracteres del nombre sea mayor que 8*/
    SELECT c.nombre, c.nomequipo FROM ciclista c WHERE LENGTH( c.nombre)>8; 
/* 7 listarme el nombre y el dorsal de todos los ciclistas mostrando un campo nuevo denominado nombre
  mayusculas que debe mostrar el nombre en mayusculas*/
  SELECT c.nombre, c.dorsal FROM ciclista c; 
  /* 8 listar todos los ciclistas que han llevado el maillot mge (amarillo) en alguna etapa*/
    SELECT DISTINCT l.dorsal FROM lleva l WHERE l.código="mge";
    SELECT * FROM ciclista c JOIN ( SELECT DISTINCT l.dorsal FROM lleva l WHERE l.código="mge")c1 ON c.dorsal= c1.dorsal; 
    /* 9 listar el nombre de los puertos cuya altura sea mayor que 1500*/ 
      SELECT p.nompuerto, p.altura FROM puerto p WHERE p.altura>1500; 
/* 10 listar el dorsal de los ciclistas que hayan ganado algun puerto cuya pendiente sea mayor que 8 o 
  cuya altura este entre 1800 y 3000*/
  SELECT p.dorsal, p.pendiente, p.altura FROM puerto p WHERE p.pendiente >8 OR  p.altura BETWEEN 1800 AND 3000; 
  /* 11 listar el dorsal de los ciclistas que hayan ganado algun puerto cuya pendiente sea mayor que 8 y cuya 
    altura este entre 1800 y 3000*/
    SELECT p.dorsal, p.pendiente, p.nompuerto, p.altura FROM puerto p WHERE p.pendiente>8 AND p.altura BETWEEN 1800 AND 3000;

/* consultas de totales */

  /* 1 numero de ciclistas que hay*/
  SELECT COUNT(*) FROM ciclista c; 
  /* 2 numero de ciclistas que hay en el equipo banesto*/
    SELECT COUNT(*) FROM ciclista c WHERE c.nomequipo='banesto'; 
    /* 3 la edad media de los ciclistas*/
      SELECT AVG( c.edad) FROM ciclista c; 
/* 4 la edad media de los de equipo banesto*/
  SELECT AVG( c.edad) FROM ciclista c WHERE c.nomequipo='banesto'; 
  /* 5 la edad media de los ciclistas por cada equipo*/
    SELECT c.nomequipo, AVG( c.edad) edad_media FROM ciclista c GROUP BY c.nomequipo; 
/* 6 el numero de ciclistas por equipo*/
  SELECT c.nomequipo, COUNT(*) FROM ciclista c GROUP BY c.nomequipo;
  /* 7 el numero total de puertos*/ 
    SELECT COUNT(*) FROM puerto p;
/* 8 el numero total de puertos mayores de 1500*/ 
  SELECT COUNT(*) FROM puerto p WHERE p.altura>1500;
  /* 9 listar el nombre de los equipos que tengan mas de 4 ciclistas*/ 
    SELECT c.nomequipo, COUNT(*) nciclistas FROM ciclista c GROUP BY c.nomequipo;
    SELECT c1.nomequipo, c1.nciclistas FROM ( SELECT c.nomequipo, COUNT(*) nciclistas FROM ciclista c GROUP BY c.nomequipo)c1 WHERE c1.nciclistas >4; 
/* 10 listar el nombre de los equipos que tengan mas de 4 ciclistas cuya edad este entre 28 y 32*/
   SELECT c1.nomequipo, c1.nciclistas FROM ( SELECT c.nomequipo, COUNT(*) nciclistas FROM ciclista c WHERE c.edad BETWEEN 28 AND 32 GROUP BY c.nomequipo)c1 WHERE c1.nciclistas >4;
  /* 11 indicarme el numero de etapas que ha ganado cada uno de los ciclistas*/
    SELECT e.dorsal, COUNT( e.numetapa) nganadas FROM etapa e GROUP BY e.dorsal; 
/* 12 indicarme el dorsal de los ciclistas que hayan ganado mas de 1 etapa*/
  SELECT c1.nganadas, c1.dorsal FROM ( SELECT e.dorsal, COUNT( e.numetapa) nganadas FROM etapa e GROUP BY e.dorsal)c1 WHERE c1.nganadas>1;