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

INSERT INTO emple (emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dep_no)
  VALUES  (7369, 'sanchez', 'empleado', 7902,(17/12/1990), 1040, NULL, 20),
          (7499, 'arroyo', 'vendedor', 7698,(20/02/1990), 1500, 390, 30),
          (7521, 'sala', 'vendedor', 7698,(22/02/1991), 1625, 650, 30),
          (7566, 'jimenez', 'director', 7839,(02/04/1991), 2900, NULL ,20),
          (7654, 'martin', 'vendedor', 7698,(29/09/1991), 1600, 1020, 30),
          (7698, 'negro', 'director', 7839,(01/05/1991), 3005, NULL, 30),
          (7782, 'cerezo', 'director', 7839,(09/06/1991), 2885, NULL, 10),
          (7788, 'gil', 'analista', 7566,(09/11/1991), 3000,NULL,20),
          (7839, 'rey', 'presidente', NULL,(17/11/1991), 4100, NULL, 10),
          (7844, 'tovar', 'vendedor', 7698,(08/09/1991), 1350, 0, 30),
          (7876, 'alonso', 'empleado', 7788,(23/09/1991), 1430,NULL , 20),
          (7900, 'jimeno', 'empleado', 7698,(03/12/1991), 1335, NULL, 30),
          (7902, 'fernandez', 'analista', 7566,(03/12/1991), 3000, NULL ,20),
          (7934, 'muñoz', 'empleado', 7782,(23/01/1992), 1690, NULL ,10);


