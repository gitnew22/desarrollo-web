USE empresa;

  /* 1 mostrar todos los campos y todos los registros de la tabla empleado*/
    SELECT * FROM emple e;
  /* 2 mostrar todos los campos y todos los registros de la tabla departamento*/ 
    SELECT * FROM depart d;
  /* 3 mostrar el apellido y oficio de cada empleado */
    SELECT e.apellido FROM emple e;
  /* 4 mostrar la localizacion y numero de cada empleado*/
    SELECT e.emp_no, e.dir FROM emple e;
  /* 5 mostrar el numero, nombre y localizacion de cada departamento*/
     SELECT d.dept_no, d.dnombre FROM depart d;
  /* 6 indicar el numero de empleados que hay */
      SELECT COUNT(*) FROM emple e; 
  /* 7 datos de los empleados ordenados por apellido de forma ascendente */
      SELECT * FROM emple e ORDER BY e.apellido;
  /* 8 datos de los empleados ordenados por apellido de forma descendente*/
      SELECT * FROM emple e ORDER BY e.apellido DESC;
  /* 9 indicar el numero de departamentos que hay*/
      SELECT COUNT(*) FROM depart d;
  /* 10 indicar el numero de empleados mas el numero de departamentos */
      SELECT
      (SELECT COUNT(*) FROM emple e)
        +
      (SELECT COUNT(*) FROM depart d);
  /* 11 datos de los empleados ordenados por numero de departamento descendentemente*/
      SELECT * FROM emple e ORDER BY e.dept_no DESC;
  /* 12 datos de los empleados ordenados por numero de departamento ascendentemente*/
      SELECT * FROM emple e ORDER BY e.dept_no;
   /* 13 datos de los empleados ordenados por numero de departamento descenedentemente
    y por pellido ascendentemente.*/
      SELECT * FROM emple e ORDER BY e.apellido , e.dept_no DESC;
    /* 14 mostrar los codigos de los empleados cuyo salario sea mayor que 2000.*/
      SELECT e.emp_no, e.salario FROM emple e WHERE e.salario>2000;
    /* 15 mostrar los codigos y apellidos de los empleados cuyo salario sea menor que 2000*/
      SELECT e.emp_no, e.apellido FROM emple e WHERE e.salario<2000;
    /* 16 mostrar los datos de los empleados cuyo salario este entre 1500 y 2500*/
      SELECT * FROM emple e WHERE e.salario BETWEEN 1500 AND 2500;
    /* 17 mostrar los datos de los empleados cuyo oficio sea 'analista'*/
      SELECT * FROM emple e WHERE e.oficio='analista';
    /* 18 mostrar los datos de los empleados cuyo oficio  sea 'analista' y ganen mas de 2000 €*/
      SELECT * FROM emple e WHERE e.oficio='analista' AND e.salario>2000;
    /* 19 seleccionar el apellido y oficio de los empleados del departamento numero 20*/
      SELECT * FROM emple e WHERE e.dept_no=20;
    /* 20 contar el numero de empleados cuyo oficio sea 'vendedor*/
      SELECT COUNT(*) FROM emple e WHERE e.oficio='vendedor';
    /* 21 mostrar todos los datos de los empleados cuyos apellidos comiencen por m o por n 
    ordenados por apellido de forma ascendente*/
      SELECT * FROM emple e WHERE e.apellido LIKE 'm%'OR'n%' ORDER BY e.apellido; 
    /* 22 seleccionar los empleados cuyo oficio sea vendedor. mostrar los datos ordenados por
    apellido de forma ascendente*/
      SELECT * FROM emple e WHERE e.oficio='vendedor'ORDER BY e.apellido ;
    /* 23 mostrar los apellidos del empleado que mas gana*/
      SELECT e.apellido FROM emple e WHERE e.salario= (SELECT MAX( e.salario) FROM emple e );
    /* 24 mostrar los empleados cuyo departamento sea 10 y cuyo oficio sea analista ordenar
    el resultado*/
      SELECT * FROM emple e WHERE e.dept_no=10 AND e.oficio='analista' ORDER BY e.apellido, e.oficio;
    /* 25 realizar un listado de los distintos meses en que los empleados se han dado de alta*/
      SELECT MONTH( e.fecha_alt) FROM emple e WHERE e.fecha_alt; 
    /* 26 realizar un listado de los distintos años en que los empleados se han dado de alta*/
      SELECT YEAR( e.fecha_alt)  FROM emple e WHERE e.fecha_alt;
    /* 27 realizar un listado de los distintos dias del mes en que los empleados se han dado de alta*/
      SELECT DAYOFMONTH( e.fecha_alt) FROM emple e WHERE e.fecha_alt;
    /* 28 mostrar los apellidos de los empleados que tengan un salario mayor que 2000 o que
    pertenezcan al departamento numero 20*/
      SELECT e.apellido,e.salario,e.dept_no FROM emple e WHERE e.salario>2000 OR e.dept_no=20;
    /* 29 realizar un listado donde nos coloque el apellido del empleado y el nombre del departamento 
    al que pertenece*/
      SELECT e.apellido, d.dnombre FROM emple e JOIN depart d ON e.dept_no = d.dept_no;
    /* 30 realizar un listado donde nos coloque el apellido del empleado , el oficio del empleado y el nombre
    del departamento al que pertenece. ordenar los resultados por apellido de forma descendente*/
       SELECT e.apellido, e.oficio, d.dnombre FROM emple e JOIN depart d ON e.dept_no = d.dept_no ORDER BY e.apellido DESC;
    /* 31 listar el numero de empleados por departamento. la salida del comando debe ser como la que vemos a continuacion*/
       SELECT DISTINCT  e.dept_no , e.emp_no numerodempleados FROM emple e GROUP BY e.dept_no;
    /* 32 realizar el mismo comando anterior pero obteniendo una salida como la que vemos */
       SELECT DISTINCT d.dnombre, COUNT( d.dept_no) numerodempleados FROM emple e JOIN depart d ON e.dept_no = d.dept_no GROUP BY d.dept_no;
    /* 33 listar el apellido de todos los empleados y ordenalos por oficio, y nombre.*/
      SELECT e.apellido, e.oficio FROM emple e ORDER BY e.oficio, e.apellido;
    /* 34 seleccionar de la tabla emple los empleados cuyo apellido empiece por a. listar el apellido de los empleados*/
      SELECT e.apellido FROM emple e WHERE e.apellido LIKE 'a%';
    /* 35 seleccionar de la tabla emple los empleados cuyo apellido empiece por a o por m. listar el apellido de los empleados*/
      SELECT e.apellido FROM emple e WHERE e.apellido LIKE 'a%' OR 'm%';
    /* 36 seleccionar de la tabla emple los empleados cuyo apellido no termine por z listar todos los campos de la tabla empleados*/
      SELECT * FROM emple e WHERE e.apellido NOT LIKE '%z';
    /* 37 seleccionar de la tabla emple aquellas filas cuyo apellido no termine por a y el oficio tenga una e en cualquier posicion
      ordenar la salida por oficio y por salario de forma descendiente*/
      SELECT * FROM emple e WHERE e.apellido NOT LIKE '%a' AND e.oficio LIKE '%e%' ORDER BY e.oficio,e.salario; 