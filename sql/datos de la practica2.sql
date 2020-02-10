/* DATOS DE LA PRACTICA 2 */
  USE practica2sql;

INSERT INTO Ciudad VALUES ('CR', 60000);
INSERT INTO Ciudad VALUES ('TO', 80000);
INSERT INTO Ciudad VALUES ('AB', 70000);
INSERT INTO Ciudad VALUES ('CU', 50000);
INSERT INTO Ciudad VALUES ('GU', 75000);

INSERT INTO Persona VALUES ('Juan', 'Calle1', 'CR');
INSERT INTO Persona VALUES ('Eva', 'Calle2', 'CR');
INSERT INTO Persona VALUES ('Jose', 'Calle3', 'TO');
INSERT INTO Persona VALUES ('Maria', 'Calle4', 'TO');
INSERT INTO Persona VALUES ('Ana', 'Calle5', 'AB');
INSERT INTO Persona VALUES ('Blas', 'Calle6', 'AB');
INSERT INTO Persona VALUES ('Antonio', 'Calle7', 'CU');
INSERT INTO Persona VALUES ('Wendy', 'Calle8', 'CU');
INSERT INTO Persona VALUES ('Paco', 'Calle9', 'GU');
INSERT INTO Persona VALUES ('Marga', 'Calle9', 'GU');
INSERT INTO Persona VALUES ('Casimiro', 'Calle11', 'CR');

INSERT INTO Compañia VALUES ('INDRA', 'CR');
INSERT INTO Compañia VALUES ('FAGOR', 'TO');
INSERT INTO Compañia VALUES ('NESTLE', 'AB');

INSERT INTO Trabaja VALUES ('Juan', 'INDRA', 40000);
INSERT INTO Trabaja VALUES ('Eva', 'INDRA', 30000);
INSERT INTO Trabaja VALUES ('Jose', 'FAGOR', 50000);
INSERT INTO Trabaja VALUES ('Maria', 'FAGOR', 40000);
INSERT INTO Trabaja VALUES ('Ana', 'FAGOR', 18000);
INSERT INTO Trabaja VALUES ('Blas', 'NESTLE', 25000);
INSERT INTO Trabaja VALUES ('Antonio', 'NESTLE', 15000);
INSERT INTO Trabaja VALUES ('Wendy', 'INDRA', 50000);
INSERT INTO Trabaja VALUES ('Paco', 'NESTLE', 25000);
INSERT INTO Trabaja VALUES ('Marga', 'NESTLE', 50000);

INSERT INTO Supervisa VALUES ('Wendy', 'Juan');
INSERT INTO Supervisa VALUES ('Wendy', 'Eva');
INSERT INTO Supervisa VALUES ('Jose', 'Maria');
INSERT INTO Supervisa VALUES ('Maria', 'Ana');
INSERT INTO Supervisa VALUES ('Marga', 'Paco');
INSERT INTO Supervisa VALUES ('Marga', 'Blas');
INSERT INTO Supervisa VALUES ('Blas', 'Antonio');