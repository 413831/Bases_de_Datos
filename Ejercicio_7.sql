/*
1) Una base de datos hospitalaria contiene las siguientes relaciones:
PACIENTES (CODIGO-PAC, APELLIDO-PAC, EDAD) --> CODIGO_PAC (Clave primaria)
MEDICAMENTOS (CODIGO-MED, PRECIO-UNITARIO) --> CODIGO-MED (Clave primaria)
GASTOS (CODIGO-PAC, CODIGO-MED) --> CODIGO-PAC + CODIGO-MED (Clave primaria compuesta), CODIGO-PAC (Clave foranea de PACIENTES), CODIGO-MED (Clave foranea de MEDICAMENTOS)
Indicar las claves primarias y claves ajenas de cada relación.
*/

/*2) Dadas las siguientes relaciones:
CURSOS (NUMCURSO, TITULO) --> NUMCURSO (Clave primaria)
OFRECIMIENTOS (NUMCURSO, NUMOFR, FECHA, AULA) --> NUMOFR (Clave primaria) , NUMCURSO (Clave foranea de CURSOS)
PROFESORES (NUMCURSO, NUMOFR, NUMEMP) --> NUMCURSO + NUMEMP (Clave primaria compuesta), NUMCURSO (Clave foranea de CURSOS), NUMOFR (Clave foranea de OFRECIMIENTOS), NUMEMP (Clave foranea de EMPLEADOS)
ESTUDIANTES (NUMCURSO, NUMOFR, NUMEMP, CALIFICACION) --> NUMEMP + NUMOFR + NUMCURSO (Clave primaria compuesta) NUMCURSO (Clave foranea de CURSOS), NUMOFR (Clave foranea de OFRECIMIENTOS), NUMEMP (Clave foranea de EMPLEADOS)
EMPLEADOS (NUMEMP, EMPLE-NOMBRE, PUESTO) --> NUMEMP (Clave primaria)
Indicar las claves primarias y claves ajenas de cada relación.*/

/*
Empleados (cod_emp, nombre, apellido, tipo_doc, num_doc, categoria, cod_ofic)
Oficinas (cod_ofic, descripción)
Crear las siguientes reglas de integridad:
 La columna cod_emp debe ser clave primaria.

ALTER TABLE Empleados ADD PRIMARY KEY(cod_emp);

 La columna cod_emp debe tener valores entre 100 y 1000.

ALTER TABLE Empleados ADD CONSTRAINT cod_id_ck CHECK (id BETWEEN 1 AND 1000);

 Las columnas tipo_doc y num_doc deben contener valores no repetidos (únicos).

ALTER TABLE Empleados ADD CONSTRAINT UNIQUE (tipo_doc, num_doc);

 La columna Categoria debe contener algunos de los siguientes valores: Senior, Semi Senior, Junior.

ALTER TABLE Empleados ADD CONSTRAINT categoria_ck CHECK (categoria IN ('Senior', 'Semi Senior', 'Junior'));

 La columna cod_ofic debe tener valores que existan en la tabla Oficinas.*/

ALTER TABLE Empleados ADD CONSTRAINT cod_oficina_fk FOREIGN KEY (cod_ofic) REFERENCES Oficinas(cod_ofic);




