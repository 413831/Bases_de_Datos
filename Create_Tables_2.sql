/*
Documentos (cod_documento, descripción)
Oficinas (cod_oficina, codigo_director, descripcion)
Empleados (cod_empleado, apellido, nombre, fecha_nacimiento, num_doc, cod_jefe, cod_oficina, cod_documento)
Datos_contratos (cod_empleado, fecha_contrato, cuota, ventas)
Fabricantes (cod_fabricante, razón_social)
Listas (cod_lista, descripción, ganancia)
Productos (cod_producto, descripcion, precio, cantidad_stock, punto_reposición, cod_fabricante)
Precios (cod_producto, cod_lista, precio)
Clientes (cod_cliente, cod_lista, razón_social)
Pedidos (cod_pedido, fecha_pedido, cod_empleado, cod_cliente)
Detalle_pedidos (cod_pedido, numero_linea, cod_producto, cantidad)*/

CREATE TABLE documentos (cod_documento INT NOT NULL, descripción VARCHAR(30), PRIMARY KEY (cod_documento));
CREATE TABLE oficinas (cod_oficina INT NOT NULL, codigo_director INT NOT NULL,descripción VARCHAR(30), PRIMARY KEY (cod_oficina));
ALTER TABLE empleados ADD (apellido VARCHAR(30), fecha_nacimiento DATE, cod_jefe INT, cod_oficina INT, cod_documento INT);
CREATE TABLE datos_contratos (id INT NOT NULL, fecha_contrato DATE NOT NULL, cuota INT, ventas INT, PRIMARY KEY(id, fecha_contrato),
FOREIGN KEY (id) REFERENCES empleados (id));

ALTER TABLE datos_contratos RENAME COLUMN id TO cod_empleado;

CREATE TABLE fabricantes (cod_fabricante INT NOT NULL, razon_social VARCHAR(40), PRIMARY KEY(cod_fabricante));
CREATE TABLE listas (cod_lista INT NOT NULL, descripcion VARCHAR(40), ganancia INT NOT NULL,PRIMARY KEY(cod_lista));
ALTER TABLE productos ADD (cantidad_stock INT NOT NULL, punto_reposicion VARCHAR(40), cod_fabricante INT, 
FOREIGN KEY(cod_fabricante) REFERENCES fabricantes(cod_fabricante));

ALTER TABLE productos ADD (FOREIGN KEY(precio) REFERENCES precios(precio));


CREATE TABLE precios (cod_producto INT NOT NULL, cod_lista INT NOT NULL, precio INT NOT NULL, PRIMARY KEY (cod_producto, cod_lista),
FOREIGN KEY(cod_producto) REFERENCES productos(pnro),
FOREIGN KEY(cod_lista) REFERENCES listas(cod_lista));

ALTER TABLE clientes ADD (cod_lista INT, FOREIGN KEY(cod_lista) REFERENCES listas(cod_lista));
ALTER TABLE clientes RENAME COLUMN nombre TO razon_social;
CREATE TABLE pedidos (cod_pedido INT NOT NULL, fecha_pedido DATE, cod_empleado INT NOT NULL, cod_cliente INT NOT NULL, 
PRIMARY KEY(cod_pedido),
FOREIGN KEY(cod_empleado) REFERENCES empleados(id),
FOREIGN KEY(cod_cliente) REFERENCES clientes(codigo_cliente));
CREATE TABLE detalle_pedidos (cod_pedido INT NOT NULL, numero_linea INT NOT NULL, cod_producto INT NOT NULL, cantidad INT NOT NULL, 
PRIMARY KEY(cod_pedido, numero_linea, cod_producto),
FOREIGN KEY(cod_pedido) REFERENCES pedidos(cod_pedido),
FOREIGN KEY(cod_producto) REFERENCES productos(pnro));

SELECT * FROM empleados;
ALTER TABLE empleados ADD CONSTRAINT test_id_ck CHECK (id BETWEEN 1 AND 1000);

ALTER TABLE empleados ADD CONSTRAINT UNIQUE (id, dni);

SELECT * FROM listas;
ALTER TABLE listas ADD CONSTRAINT categoria_ck CHECK (descripcion IN ('mayorista', 'minorista', 'mayorista y minorista'));