USE ciclistas;
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
    /* 9 listar el nombre de los puertos cuya altura sea mayor que 1500*/ 
      SELECT p.nompuerto, p.altura FROM puerto p WHERE p.altura>1500; 
/* 10 listar el dorsal de los ciclistas que hayan ganado algun puerto cuya pendiente sea mayor que 8 o 
  cuya altura este entre 1800 y 3000*/
  SELECT p.dorsal, p.pendiente, p.altura FROM puerto p WHERE p.pendiente >8 OR  p.altura BETWEEN 1800 AND 3000; 
  /* 11 listar el dorsal de los ciclistas que hayan ganado algun puerto cuya pendiente sea mayor que 8 y cuya 
    altura este entre 1800 y 3000*/
    SELECT * FROM ;