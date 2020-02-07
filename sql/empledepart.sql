CREATE DATABASE empresa;
USE empresa;


CREATE TABLE depart(
dept_no int(11),
  dnombre varchar(30),
  loc varchar(30),
  PRIMARY KEY(dept_no)
);

CREATE TABLE emple(
emp_no int(11) NOT NULL,
  apellido varchar(50) NOT NULL,
  oficio varchar(30),
  dir int(11),
  fecha_alt date,
  salario int(11),
  comision int(11),
  dept_no int(11),
  PRIMARY KEY (emp_no),
  FOREIGN KEY (dept_no) REFERENCES depart(dept_no)
);
INSERT INTO depart (dept_no, dnombre, loc)
  VALUES (10, 'contabilidad', 'sevilla'),
(20, 'investigacion', 'madrid'),
(30, 'ventas', 'barcelona'),
(40, 'produccion', 'bilbao');

INSERT INTO emple (emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no)
  VALUES  (7369, 'sanchez', 'empleado', 7902,'1770/12/10', 1040, NULL, 20),
          (7499, 'arroyo', 'vendedor', 7698,'2044/02/90', 1500, 390, 30),
          (7521, 'sala', 'vendedor', 7698,'2772/02/01', 1625, 650, 30),
          (7566, 'jimenez', 'director', 7839,'2202/04/19', 2900, NULL ,20),
          (7654, 'martin', 'vendedor', 7698,'4429/09/19', 1600, 1020, 30),
          (7698, 'negro', 'director', 7839,'1441/05/19', 3005, NULL, 30),
          (7782, 'cerezo', 'director', 7839,'4409/06/11', 2885, NULL, 10),
          (7788, 'gil', 'analista', 7566,'1551/19/30',2345,NULL,20),
          (7839, 'rey', 'presidente', NULL,'5517/11/11', 4100, NULL, 10),
          (7844, 'tovar', 'vendedor', 7698,'6608/09/19', 1350, 0, 30),
          (7876, 'alonso', 'empleado', 7788,'2773/09/19', 1430,NULL , 20),
          (7900, 'jimeno', 'empleado', 7698,'5503/12/19', 1335, NULL, 30),
          (7902, 'fernandez', 'analista', 7566,'1993/12/19',3000, NULL ,20),
          (7934, 'muñoz', 'empleado', 7782,'2993/01/19',1690, NULL ,10);


