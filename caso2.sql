CREATE DATABASE caso2;


CREATE TABLE alumno(
rut INT
,nombre VARCHAR(25)
,id_curso INT
, PRIMARY KEY (rut)
, FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);


CREATE TABLE curso(
id_curso INT
,nombre VARCHAR(25)
, PRIMARY KEY (id_curso)
);

CREATE TABLE prueba(
id_prueba INT
,puntaje INT
,id_profesor INT
, PRIMARY KEY (id_prueba)
, FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor)
);

CREATE TABLE profesor(
id_profesor INT
,nombre VARCHAR(50)
,departamento VARCHAR(50)
, PRIMARY KEY (id_profesor)
);