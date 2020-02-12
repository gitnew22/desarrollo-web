USE practica3desarrollo;
/* 1 visualizar el numero de empleados de cada departamento. utilizar groupBy para agrupar por departamento*/
SELECT COUNT( e.emp_no), e.dept_no FROM emple e GROUP BY e.dept_no; 
/* 2 visualizar los departamentos con mas de 5 empleados. utilizar groupBy para agrupar por departamento y having para
  establecer la condicion sobre los grupos*/
  SELECT COUNT( e.emp_no) empleados, e.dept_no FROM emple e  GROUP BY e.dept_no HAVING empleados>5; 
  /* 3 hallar la media de los salario de cada departamento (utilizar la funcion avg y grout by*/
  SELECT AVG( e.salario), e.dept_no FROM emple e GROUP BY e.dept_no; 