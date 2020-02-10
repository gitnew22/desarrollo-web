USE emple_depart;

         -- 1 mostrar todos los campos y todos los registros de la tabla empleado --
            SELECT * FROM emple e;

         -- 2 mostrar todos los campos y todos los registros de la tabla departamento --
             SELECT * FROM depart d;

         -- 3 mostrar el apellido y oficio de cada empleado --
             SELECT e.apellido, e.oficio FROM emple e ;

         -- 4 mostrar localizacion  y numero de cada departamento --
              SELECT d.dnombre,d.loc FROM depart d;

          -- 5 mostrar el numero, nombre y localizacion de cada departamento --
              SELECT d.dept_no,
                 d.dnombre,
                 d.loc FROM depart d;

         -- 6 indicar el numero de empleados que hay --
          SELECT COUNT(*)FROM emple e; 

         -- 7 datos de los empleados ordenados por apellido de forma ascendente de la tabla emple --
              SELECT * FROM emple e ORDER BY e.apellido ASC; 

         -- 8 datos de los empleados ordenados por apellido de forma descendente de la tabla emple --
               SELECT * FROM emple e ORDER BY e.apellido DESC;

         -- 9 indicar el numero de departamentos que hay --

         -- 10 indicar el numero de empleados mas el numero de departamentos --
                SELECT
                (SELECT COUNT(*) FROM emple e) + 
                (SELECT COUNT(*) FROM depart d);
         -- 11 datos de los empleados ordenados por numero de departamento descendentemente --
                SELECT * FROM emple e ORDER BY e.dept_no DESC;

         -- 12 datos de los empleados ordenados por numero de departamento descendentemente y por oficio ascendente --
               SELECT * FROM emple e ORDER BY e.dept_no DESC, e.oficio ASC;
              
         -- 13 datos de los empleados ordenados por numero de departamento descendentemente y por apellido ascendentemente --
                SELECT * FROM emple e ORDER BY e.dept_no DESC, e.apellido ASC;
                
         -- 14 mostrar los codigos de los empleados cuyo salario sea mayor que 2000 --
                 SELECT * FROM emple e WHERE e.salario >2000;
                  
         -- 15  mostrar los codigos de los empleados cuyo salario sea menor que 2000 --
                SELECT * FROM emple e WHERE e.salario <2000;

         -- 16 mostrar los datos de los empleados cuyo salario este entre 1500 y 2500 --
                  SELECT * FROM emple e WHERE e.salario BETWEEN 1500 AND 2500;

         -- 17 mostrar los datos de los empleados cuyo oficio sea 'Analista' --
                SELECT * FROM emple e WHERE e.oficio= 'ANALISTA';

         -- 18 mostrar los datos de los empleados cuyo oficio sea analista y ganen mas de 2000 euros --
                SELECT * FROM emple e WHERE e.oficio='ANALISTA' AND e.salario>2000;

         -- 19 seleccionar el apellido y oficio de los empleados del departamento numero 20 --
               SELECT e.apellido, e.oficio FROM emple e WHERE e.dept_no=20;

          -- 20 contar el numero de empleados cuyo oficio sea Vendedor --

         -- 21 mostrar todos los datos de los empleados cuyos apellidos comiencen por m o por n ordenados por apellido de forma ascendente --
            SELECT * FROM emple e WHERE e.apellido LIKE 'm%' OR e.apellido LIKE 'n%' ORDER BY e.apellido ASC;

         -- 22 seleccionar los empleados cuyo oficio sea 'VENDEDOR'. mostrar los datos ordenados por apellido de forma ascendente --
            SELECT * FROM emple e WHERE e.oficio='VENDEDOR' ORDER BY e.apellido ASC;
            
          -- 23 mostrar los apellidos del empleado que mas gana --
            SELECT e.apellido FROM emple e ORDER BY e.salario DESC LIMIT 1; 
            
          -- 24 mostrar los empleados  
            SELECT * FROM emple e WHERE e.dept_no=10 AND e.oficio= 'ANALISTA' ORDER BY e.apellido, e.oficio ASC;

            -- 25 realizar un listado de los distintos meses en que los empleados se han dado de alta--
            SELECT MONTH(fecha_alt) FROM  emple e WHERE e.fecha_alt;

           -- 26 realizar un listado de los distintos años en que los empleados se han dado de alta --
            SELECT YEAR( e.fecha_alt)  FROM emple e WHERE e.fecha_alt;

          -- 27 realizar un listado de los distintos dias del mes en que los empleados se han dado de alta --
            SELECT DAYOFMONTH( e.fecha_alt) FROM emple e WHERE e.fecha_alt;

          -- 28 mostrar los apellidos de los empleados que tengan un salario mayor que 2000 o que pertenezcan al departamento número 20 --
          SELECT e.apellido FROM emple e WHERE e.salario >2000 OR e.dept_no=20;
          
          -- 29 realizar un listado donde nos coloque el apellido del empleado y el nombre del departamento al que pertenece --
          SELECT e.apellido, d.dnombre FROM emple e, depart d ; 
          
          -- 30 realizar un listado donde nos coloque el apellido del empleado, el oficio del empleado y el nombre del departamento al que pertenece. 
          -- ordenar los resultados por apellido de forma descendente --
          SELECT e.apellido, e.oficio FROM emple e ;
          SELECT d.dnombre FROM depart d;
          
          -- 31 listar el número de empleados por departamento. la salida del comando debe ser como la que vemos a continuación --
          SELECT COUNT(*),e.dept_no FROM emple e GROUP BY e.dept_no;
          
          -- 32  realizar el mismo comando anterior pero obteniendo una salida como la que vemos --
          SELECT COUNT(*), e.emp_no FROM emple e GROUP BY e.emp_no;
          
          -- 33 listar el apellido de todos los empleados y ordenarlos por oficio, y por nombre.
          SELECT e.apellido FROM emple e ORDER BY e.oficio ASC, e.emp_no ASC;
          
          -- 34 seleccionar de la tabla emple los empleados cuyo apellido empiece por a. listar el apellido de los empleados --
          SELECT e.apellido FROM emple e WHERE e.apellido LIKE 'A%';
          
          -- 35 seleccionar de la tabla emple los empleados cuyo apellido empiece por a o por m. listar  el apellido de los empleados --
          SELECT e.apellido FROM emple e WHERE e.apellido LIKE 'A%' OR e.apellido LIKE 'M%';
          
           -- 36 seleccionar de la tabla emple los empleados cuyo apellido no termine por z. listar todos los campos de la tabla empleados --
           SELECT * FROM emple e WHERE e.apellido NOT LIKE '%o';
          
          -- 37 seleccionar de la tabla emple aquellas filas cuyo apellido empiece por a y el oficio tenga una e en cualquier posicion.
          --  ordenar la salida por oficio y por salario de forma descendente --
          SELECT e.oficio, e.salario, e.apellido FROM emple e WHERE e.apellido LIKE 'A%' AND e.oficio LIKE '%E%' 
          ORDER BY e.salario AND e.oficio DESC;


       
        



