CREATE DATABASE caso1;

CREATE TABLE trabajador(
rut INT
,nombre VARCHAR(25)
,direccion VARCHAR(255)
,id_dpto INT
, PRIMARY KEY (rut)
, FOREIGN KEY (id_dpto) REFERENCES departamento(id_dpto)
);

CREATE TABLE departamento(
id_dpto INT
,nombre VARCHAR(25)
, PRIMARY KEY (id_dpto)
);

CREATE TABLE liquidacion(
id_liquidacion INT
,drive VARCHAR(255)
,rut INT
, PRIMARY KEY (id_liquidacion)
, FOREIGN KEY (rut) REFERENCES trabajador(rut)
);