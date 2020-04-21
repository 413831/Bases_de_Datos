/*
EJERCICIOS DE DDL:
1) Crear una vista formada por los números de proveedores y números de
productos situados en diferentes localidades.

CREATE VIEW V_Proveedores_Localidad AS SELECT pv.numero, pd.pnro, pv.localidad FROM proveedores AS pv, productos AS pd
WHERE pv.localidad = pd.localidad;

2) Agregar la columna IMPORTADOR a la tabla PRODUCTOS.

ALTER TABLE productos ADD importador VARCHAR(30);

3) Crear una vista formada por los registros de los proveedores que viven en Avellanegra.

CREATE VIEW V_Proveedores_Avellanegra AS SELECT * FROM proveedores WHERE proveedores.localidad = 'Avellanegra';

4) Crear las tablas DEPARTAMENTOS y EMPLEADOS con sus relaciones, y las
tablas PACIENTES y MEDICAMENTOS con sus relaciones.

CREATE TABLE departamentos
(sector INT NOT NULL,
nombre_sector VARCHAR(25) NOT NULL,
miembros INT NOT NULL,
ubicacion VARCHAR(25) NOT NULL,
PRIMARY KEY (sector));

CREATE TABLE empleados
(id INT NOT NULL,
nombre VARCHAR(50),
dni VARCHAR(12),
sector INT NOT NULL,
sueldo INT NOT NULL,
PRIMARY KEY (id, nombre),
FOREIGN KEY (sector) REFERENCES departamentos
(sector));

CREATE TABLE medicamentos
(p_activo VARCHAR(30) NOT NULL,
laboratorio VARCHAR(40) NOT NULL,
precio INT NOT NULL,
cantidad INT NOT NULL,
lote INT NOT NULL,
nombre_comercial VARCHAR(40),
PRIMARY KEY (p_activo, lote, laboratorio));

CREATE TABLE pacientes
(nombre VARCHAR(50) NOT NULL,
dni VARCHAR(12) NOT NULL,
obra_social VARCHAR(30) NOT NULL,
medicamento VARCHAR(40),
laboratorio VARCHAR(40),
codigo_medicamento INT NOT NULL,
PRIMARY KEY (nombre, dni),
FOREIGN KEY (medicamento, codigo_medicamento, laboratorio) REFERENCES medicamentos(p_activo, lote, laboratorio));
*/
SELECT * FROM productos;
SELECT * FROM proveedores;
SELECT * FROM proveedores_productos;
SELECT * FROM V_Proveedores_Localidad;
SELECT * FROM V_Proveedores_Avellanegra;