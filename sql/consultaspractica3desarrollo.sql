USE practica3desarrollo;
/* 1 visualizar el numero de empleados de cada departamento. utilizar groupBy para agrupar por departamento*/
SELECT COUNT( e.emp_no), e.dept_no FROM emple e GROUP BY e.dept_no; 
/* 2 visualizar los departamentos con mas de 5 empleados. utilizar groupBy para agrupar por departamento y having para
  establecer la condicion sobre los grupos*/
  SELECT COUNT( e.emp_no) empleados, e.dept_no FROM emple e  GROUP BY e.dept_no HAVING empleados>5; 
  /* 3 hallar la media de los salario de cada departamento (utilizar la funcion avg y grout by*/
  SELECT AVG( e.salario), e.dept_no FROM emple e GROUP BY e.dept_no; 
  /* 4 visualizar el nombre de los empleados vendedores del departamento ventas (nombre del departamento =ventas, oficio=vendedor)*/
  SELECT e.apellido FROM emple e JOIN depart d ON e.dept_no = d.dept_no WHERE d.dnombre='ventas' AND e.oficio='vendedor'; 
  /* 5 visualizar el numero de vendedores del departamentos ventas(utilizar la funcion count sobre la consulta anterior)*/ 
  SELECT COUNT(*) FROM emple e JOIN depart d ON e.dept_no = d.dept_no WHERE d.dnombre='ventas' AND e.oficio='vendedor'; 
  /* 6 visualizar los oficios de los empleados del departamento ventas*/
  SELECT e.oficio, d.dnombre FROM emple e JOIN depart d ON e.dept_no = d.dept_no WHERE d.dnombre='ventas'; 
  /* 7 a partir de la tabla emple, visualizar el numero de empleados de cada departamento cuyo oficio sea empleado
    (utilizar groupBy para agrupar por departamento. En la clausula where habrá que indicar que el oficio es empleado)*/
  SELECT e.dept_no, e.oficio, e.emp_no FROM emple e WHERE e.oficio='empleado'  GROUP BY e.dept_no;  
  
  /* 8 visualizar el departamento con mas empleados*/
    /*primero hallamos el numero de empleados por departamento*/

  SELECT e.dept_no, COUNT(*) numero FROM emple e GROUP BY e.dept_no; 
    /*despues hallamos el numero maximo de empleados por departamento*/
 
 SELECT MAX( c1.numero) numeromax FROM
  (SELECT e.dept_no,  COUNT(*) numero FROM emple e GROUP BY e.dept_no)c1;
    /*por ultimo sacamos el departamento con el numero maximo de empleados*/

  SELECT c1.dept_no FROM ( SELECT e.dept_no, COUNT(*) numero FROM emple e GROUP BY e.dept_no) c1 JOIN 
  ( SELECT MAX( c1.numero) numeromax FROM
  (SELECT e.dept_no,  COUNT(*) numero FROM emple e GROUP BY e.dept_no)c1)c2 ON c1.numero=c2.numeromax; 

  /* 9 mostrar los departamento cuya suma de salarios sea mayor que la media de salarios de todos los empleados*/

  (SELECT SUM(e.salario), e.dept_no  FROM emple e GROUP BY e.dept_no);  
  (SELECT AVG(e.salario) FROM emple e);
  SELECT e.dept_no FROM emple e GROUP BY e.dept_no HAVING SUM(e.salario)>(SELECT AVG(e.salario) FROM emple e);

  /* 10 para cada oficio obtener la suma de salarios*/
  SELECT SUM(e.salario), e.oficio FROM emple e GROUP BY e.oficio;

  /* 11 visualizar la suma de salarios de cada oficio del departamento ventas*/
    SELECT SUM(e.salario), e.oficio  FROM emple e JOIN depart d ON e.dept_no = d.dept_no WHERE d.dnombre='ventas' GROUP BY e.oficio ;

  /* 12 visualizar el numero de departamento que tenga mas empleados cuyo oficio sea empleado*/
    SELECT COUNT(e.emp_no) numemple, e.dept_no, e.oficio  FROM emple e WHERE e.oficio='empleado' GROUP BY e.dept_no;
    SELECT MAX(c1.numemple) FROM 
   (SELECT COUNT(e.emp_no) numemple, e.dept_no FROM emple e WHERE e.oficio='empleado' GROUP BY e.dept_no) c1;
   SELECT e.dept_no FROM emple e WHERE e.oficio='empleado' GROUP BY e.dept_no HAVING COUNT(*)=( 
    SELECT MAX(c1.numemple) FROM (SELECT COUNT(*) numemple FROM emple e WHERE e.oficio='empleado' GROUP BY e.dept_no) c1);
  /* 13 mostrar el numero de oficios distintos de cada departamentos*/
    SELECT COUNT(DISTINCT e.oficio), e.dept_no FROM emple e GROUP BY e.dept_no; 
  /* 14 mostrar los departamentos que tengan mas de dos personas trabajando en la misma profesion*/
    /* numero de empleados por departamento y oficio*/
    SELECT e.oficio, e.dept_no, COUNT(*) FROM emple e GROUP BY e.dept_no,e.oficio;
    /*departamento que tiene mas de dos personas con el mismo oficio*/
    SELECT e.dept_no FROM emple e GROUP BY e.dept_no,e.oficio HAVING COUNT(*)>2; 
    /*final*/
    SELECT * FROM depart d JOIN ( SELECT e.dept_no FROM emple e GROUP BY e.dept_no,e.oficio HAVING COUNT(*)>2)c1
    USING(dept_no);
    /* 15 dada la tabla herramientas, visualizar por cada estanteria la suma de las unidades*/      
    SELECT SUM( h.unidades), h.estanteria FROM herramientas h GROUP BY h.estanteria;
    /* 16 visualizar la estanteria con mas unidades de la tabla herramientas. (con totales y sin totales)*/ 
    SELECT SUM(h.unidades), h.estanteria FROM herramientas h GROUP BY h.estanteria;

    SELECT MAX( c1.unidades) maxuni FROM ( SELECT SUM(h.unidades) unidades, h.estanteria FROM herramientas h GROUP BY h.estanteria)c1;

    SELECT c2.estanteria  FROM ( SELECT MAX( c1.unidades) maxuni FROM ( SELECT SUM(h.unidades) unidades, h.estanteria FROM 
    herramientas h GROUP BY h.estanteria)c1) c1
    JOIN
    (SELECT SUM(h.unidades) unidades, h.estanteria FROM herramientas h GROUP BY h.estanteria) c2 ON c1.maxuni= c2.unidades; 
    /* 17 mostrar el numero de medicos que pertenecen a cada hospital, ordenado por numero descendente de hospital*/
    SELECT COUNT(*), m.cod_hospital FROM medicos m GROUP BY m.cod_hospital; 

    /* 18 realizar una consulta en la que se muestre por cada hospital el nombre de las especialidades que tiene*/ 
    SELECT m.especialidad, m.cod_hospital FROM medicos m GROUP BY m.cod_hospital;
    /* 19 realizar una consulta en la que aparezca por cada hospital y en cada especialidad el numero de medicos
      (tendras que partir de la consulta anterior y utilizar group by)*/  
       SELECT COUNT( m.dni), m.especialidad, m.cod_hospital FROM medicos m GROUP BY m.cod_hospital, m.especialidad;
    /* 20 obtener por cada hospital el numero de empleados*/
      SELECT h.cod_hospital, h.nombre, COUNT(*) FROM medicos m RIGHT JOIN
      personas p ON m.cod_hospital = p.cod_hospital RIGHT JOIN
      hospitales h ON m.cod_hospital = h.cod_hospital  GROUP BY h.cod_hospital ;
    /* 21 obtener por cada especialidad el numero de trabajadores*/
      SELECT COUNT( m.dni), m.especialidad FROM medicos m JOIN personas p ON m.dni = p.dni GROUP BY m.especialidad; 
    /* 22 visualizar la especialidad que tenga mas medicos*/
      SELECT COUNT(*) nmedicos, m.especialidad FROM medicos m GROUP BY m.especialidad ;
      SELECT MAX( c1.nmedicos) maxmedicos FROM (SELECT COUNT(*) nmedicos, m.especialidad FROM medicos m GROUP BY m.especialidad)c1;
     
     SELECT  FROM ( SELECT MAX( c1.nmedicos) maxmedicos FROM 
      (SELECT COUNT(*) nmedicos, m.especialidad FROM medicos m GROUP BY m.especialidad)c1)c2;
    /* 23 cual es el nombre del hospital que tiene mayor numero de plazas*/

      SELECT MAX(h.num_plazas) FROM hospitales h;
      SELECT h.nombre, h.num_plazas FROM hospitales h WHERE h.num_plazas=(SELECT MAX(h.num_plazas) FROM hospitales h);

    /* 24 visualizar las diferentes estanterias de la tabla herramientas ordenadas descendentemente por estanteria*/
      SELECT DISTINCT h.estanteria FROM herramientas h ORDER BY h.estanteria DESC;
    /* 25 averiguar cuantas unidades tiene cada estanteria*/    
      SELECT h.estanteria,SUM(h.unidades) FROM herramientas h GROUP BY h.estanteria ; 
    /* 26 visualizar las estanterias que tengan mas de 15 unidades*/
      SELECT SUM( h.unidades), h.estanteria FROM herramientas h GROUP BY h.estanteria HAVING SUM(h.unidades)>15;
    /* 27 cual es la estanteria que tiene mas unidades*/
        SELECT h.estanteria FROM herramientas h GROUP BY h.estanteria HAVING SUM(h.unidades)=( SELECT MAX(c1.totalUnidades) maxUnidades FROM 
        (SELECT h.estanteria,SUM(h.unidades) totalUnidades FROM herramientas h GROUP BY h.estanteria) c1) ;
    /* 28 a partir de las tablas emple y depart mostrar los datos del departamento que no tiene ningun empleado*/
      SELECT d.dnombre, d.dept_no, d.loc  FROM depart d LEFT JOIN emple e ON d.dept_no = e.dept_no WHERE e.emp_no IS NULL; 
    /* 29 mostrar el numero de empleados de cada departamento. en la salida se debe mostrar tambien los departamentos que no
      tienen ningun empleado*/
      SELECT e1.dept_no, COUNT(*) FROM emple e1 GROUP BY e1.dept_no; 
      SELECT *  FROM depart d LEFT JOIN (SELECT e1.dept_no, COUNT(*) FROM emple e1 GROUP BY e1.dept_no) c1   ON c1.dept_no = d.dept_no;
    /* 30 obtener la suma de salarios de cada departamento, mostrando las columnas dep_no, suma de salarios y dnombre.
      en el resultado tambien se deben mostrar los departamentos que no tienen asignados empleados*/
      SELECT e.dept_no, SUM( e.salario) sumasal FROM emple e GROUP BY e.dept_no;  
      SELECT d.dept_no, c1.sumasal, d.dnombre FROM depart d LEFT JOIN ( SELECT e.dept_no, SUM( e.salario) sumasal FROM emple e GROUP BY e.dept_no)c1 ON c1.dept_no= d.dept_no; 
    /* 31 utilizar la funcion ifnull en la consulta anterior para que en el caso de que un departamento no tenga empleados, aparezca
      como suma de salarios el valor 0*/
       SELECT d.dept_no, IFNULL( c1.sumasal,0) , d.dnombre FROM depart d LEFT JOIN ( SELECT e.dept_no, SUM( e.salario) sumasal FROM emple e GROUP BY e.dept_no)c1 ON c1.dept_no= d.dept_no;
    /* 32 obtener el numero de medicos que pertenecen a cada hospital, mostrando las colimnas cod_hospital, nombre y numero de medicos.
      em el resultado deben aparecer tambien los datos de los hospitales que no tienen medicos*/
      SELECT m.cod_hospital, COUNT(*) nmedicos FROM medicos m GROUP BY m.cod_hospital;
      SELECT hospitales.cod_hospital, nombre, m1.nmedicos FROM hospitales LEFT JOIN (SELECT m.cod_hospital, COUNT(*) nmedicos FROM medicos m GROUP BY m.cod_hospital) m1 ON hospitales.cod_hospital = m1.cod_hospital;   