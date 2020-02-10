USE practica2sql;
/* 1 indicar el numero de ciudades que hay en la tabla ciudades*/
SELECT COUNT(*) FROM ciudad c;
/* 2 indicar el nombre de las ciudades que tengan una poblacion por encima de la poblacion media*/
  SELECT c.nombre, c.población FROM ciudad c WHERE c.población>(SELECT AVG( c.población) FROM ciudad c) ;
/* 3 indicar el nombre de las ciudades que tengan una poblacion por debajo de la poblacion media*/
  SELECT * FROM 
