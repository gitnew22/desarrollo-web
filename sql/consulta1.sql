USE videoclubcantabria;
SELECT DISTINCT p.Género FROM peliculas p ORDER BY p.Género DESC ;
/*mostrar titulo de todas las peliculas pertenecientes al genero de terror*/
SELECT p.Titulo  FROM peliculas p WHERE p.Género LIKE'terror';
  /*mostrar nombre y apellidos de todos los socios cuya direccion contiene el texto calle*/
SELECT s.Nombre, s.Apellidos FROM socios s WHERE s.Direccion LIKE '%calle%'; 
  /*mostrar nombre, apellidos y telefono de los socios ordenados por apellido. mostrar solo 4 registros.*/
SELECT s.NumeroSocio,s.Nombre, s.Apellidos, s.Telefono FROM socios s ORDER BY s.Apellidos LIMIT 4; 
  /*mostrar el codigo de pelicula de aquellas que empiecen por rocky*/
SELECT p.Codpelicula FROM peliculas p WHERE p.Titulo LIKE 'rocky%'; 
  /*mostrar todos los datos del socio s001*/
SELECT * FROM socios s WHERE s.NumeroSocio = '1';
  /*mostrar nombre , apellidos y telefono de los socios cuyo telefono comience por 942*/
SELECT s.Nombre, s.Apellidos, s.Telefono FROM socios s WHERE s.Telefono LIKE '942%';
  /*mostrar todos los datos de las peliculas cuyo genero sea drama o comedia*/
    SELECT * FROM peliculas p WHERE p.Género = 'drama' OR p.Género LIKE 'comedia';

    