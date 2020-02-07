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