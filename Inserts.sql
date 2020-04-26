/* OFICINAS */
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (1,1,'Gerencia General');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (2,1,'Gerencia Ventas');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (3,1,'Gerencia RRHH');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (4,1,'Gerencia Compras');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (5,1,'Gerencia Produccion');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (13,1,'Gerencia IT');

INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (6,2,'Administracion');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (7,2,'Distribucion y logistica');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (8,2,'Recursos Humanos');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (9,2,'Calidad');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (10,2,'IT Infraestuctura');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (11,2,'IT WEB-MOBILE');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (14,2,'IT Servicios');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (15,2,'IT Business');

INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (16,3,'SUM 1');
INSERT INTO `oficinas`(`cod_oficina`,`codigo_director`,`descripción`) VALUES (17,3,'SUM 2');

/* EMPLEADOS */
SELECT * FROM empleados;

INSERT INTO empleados (`id`,`nombre`,`dni`,`sector`,`sueldo`,`apellido`,`fecha_nacimiento`,`cod_jefe`,`cod_oficina`,`cod_documento`) 
VALUES(1,'Pedro',30999999,'Cobranzas',20000,'De la Sorna',str_to_date('3-02-1984', '%d-%m-%Y'),1, 6, 1);
INSERT INTO empleados (`id`,`nombre`,`dni`,`sector`,`sueldo`,`apellido`,`fecha_nacimiento`,`cod_jefe`,`cod_oficina`,`cod_documento`) 
VALUES(2,'Juana',32999333,'Recursos Humanos ',45000,'Molina',str_to_date('3-3-1988', '%d-%m-%Y'),1, 8, 1);
INSERT INTO empleados (`id`,`nombre`,`dni`,`sector`,`sueldo`,`apellido`,`fecha_nacimiento`,`cod_jefe`,`cod_oficina`,`cod_documento`) 
VALUES(3,'Pepito',23999999,'Managment',95000,'Gomez',str_to_date('3-02-1969', '%d-%m-%Y'),3, 2, 1);
INSERT INTO empleados (`id`,`nombre`,`dni`,`sector`,`sueldo`,`apellido`,`fecha_nacimiento`,`cod_jefe`,`cod_oficina`,`cod_documento`) 
VALUES(1,'Maria',30999999,'Desarrollo Web',65000,'Pedraza',str_to_date('3-02-1989', '%d-%m-%Y'),2, 11, 1);
INSERT INTO empleados (`id`,`nombre`,`dni`,`sector`,`sueldo`,`apellido`,`fecha_nacimiento`,`cod_jefe`,`cod_oficina`,`cod_documento`) 
VALUES(1,'Nazareno',30333123,'Desarrollo Web',58000,'Velez',str_to_date('3-02-1987', '%d-%m-%Y'),2, 11, 1);
INSERT INTO empleados (`id`,`nombre`,`dni`,`sector`,`sueldo`,`apellido`,`fecha_nacimiento`,`cod_jefe`,`cod_oficina`,`cod_documento`) 
VALUES(1,'Maria Angeles',36333123,'Gerencia General',58000,'Gonzaga',str_to_date('3-02-1999', '%d-%m-%Y'), NULL, 1, 1);
INSERT INTO empleados (`id`,`nombre`,`dni`,`sector`,`sueldo`,`apellido`,`fecha_nacimiento`,`cod_jefe`,`cod_oficina`,`cod_documento`) 
VALUES(1,'Maria Jose',34333123,'Gerencia Comercial',58000,'De las Nieves',str_to_date('3-02-1979', '%d-%m-%Y'), NULL, 2, 1);
INSERT INTO empleados (`id`,`nombre`,`dni`,`sector`,`sueldo`,`apellido`,`fecha_nacimiento`,`cod_jefe`,`cod_oficina`,`cod_documento`) 
VALUES(20,'Maria',94333123,'Administracion',37000,'Lopez',str_to_date('3-02-1979', '%d-%m-%Y'), 1, 6, 2);

/* PEDIDOS */

INSERT INTO `pedidos` VALUES (1,STR_TO_DATE('3-02-2020', '%d-%m-%Y'),3,1);
INSERT INTO `pedidos` VALUES (2,STR_TO_DATE('4-02-2020', '%d-%m-%Y'),2,2);
INSERT INTO `pedidos` VALUES (3,STR_TO_DATE('12-02-2020', '%d-%m-%Y'),3,1);
INSERT INTO `pedidos` VALUES (4,STR_TO_DATE('25-02-2020', '%d-%m-%Y'),3,1);
INSERT INTO `pedidos` VALUES (5,STR_TO_DATE('3-03-2020', '%d-%m-%Y'),5,2);
INSERT INTO `pedidos` VALUES (6,STR_TO_DATE('5-03-2020', '%d-%m-%Y'),5,3);
INSERT INTO `pedidos` VALUES (7,STR_TO_DATE('6-03-2020', '%d-%m-%Y'),5,1);
INSERT INTO `pedidos` VALUES (8,STR_TO_DATE('10-04-2020', '%d-%m-%Y'),3,6);
INSERT INTO `pedidos` VALUES (9,STR_TO_DATE('13-04-2020', '%d-%m-%Y'),2,5);
INSERT INTO `pedidos` VALUES (10,STR_TO_DATE('21-04-2020', '%d-%m-%Y'),1,6);
INSERT INTO `pedidos` VALUES (11,STR_TO_DATE('23-04-2020', '%d-%m-%Y'),4,3);
INSERT INTO `pedidos` VALUES (12,STR_TO_DATE('28-04-2020', '%d-%m-%Y'),6,1);

/* DETALLE PEDIDOS */
SELECT * FROM productos;
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(1, 1 , 1, 20);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(1, 2 , 6, 50);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(1, 3 , 8, 70);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(2, 1 , 3, 5);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(3, 1 , 2, 10);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(4, 1 , 3, 50);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(5, 1 , 5, 34);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(6, 1 , 5, 34);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(6, 2 , 4, 20);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(7, 1 , 1, 15);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(8, 1 , 1, 25);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(9, 1 , 5, 40);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(10, 1 , 5, 55);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(10, 2 , 5, 60);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(11, 1 , 2, 45);
INSERT INTO `detalle_pedidos` (`cod_pedido`,`numero_linea`,`cod_producto`,`cantidad`) VALUES
(12, 1 , 8, 20);



/* CONTRATOS */
INSERT INTO `datos_contratos`(`id`,`fecha_contrato`,`cuota`,`ventas`)VALUES(1,STR_TO_DATE('15-11-2005', '%d-%m-%Y'),45000,80);
INSERT INTO `datos_contratos`(`id`,`fecha_contrato`,`cuota`,`ventas`)VALUES(2,STR_TO_DATE('15-07-2018', '%d-%m-%Y'),60000,55);
INSERT INTO `datos_contratos`(`id`,`fecha_contrato`,`cuota`,`ventas`)VALUES(3,STR_TO_DATE('15-02-2015', '%d-%m-%Y'),38000,23);
INSERT INTO `datos_contratos`(`id`,`fecha_contrato`,`cuota`,`ventas`)VALUES(4,STR_TO_DATE('15-10-2016', '%d-%m-%Y'),30000,21);
INSERT INTO `datos_contratos`(`id`,`fecha_contrato`,`cuota`,`ventas`)VALUES(5,STR_TO_DATE('15-05-2012', '%d-%m-%Y'),60000,15);
INSERT INTO `datos_contratos`(`id`,`fecha_contrato`,`cuota`,`ventas`)VALUES(6,STR_TO_DATE('15-01-2020', '%d-%m-%Y'),120000,70);

/* FABRICANTES */
INSERT INTO `fabricantes` (`cod_fabricante`,`razon_social`) VALUES (1,'Neumaticos Gomez S.A.');
INSERT INTO `fabricantes` (`cod_fabricante`,`razon_social`) VALUES (2,'Neumaticos Coca S.A.');
INSERT INTO `fabricantes` (`cod_fabricante`,`razon_social`) VALUES (3,'Cubiertas Carlito S.A.');

/* LISTAS */
INSERT INTO `listas` (`cod_lista`,`descripcion`,`ganancia`) VALUES (1,'minorista', 50000);
INSERT INTO `listas` (`cod_lista`,`descripcion`,`ganancia`) VALUES (2,'mayorista', 300000);
INSERT INTO `listas` (`cod_lista`,`descripcion`,`ganancia`) VALUES (3,'minorista y minorista', 400000);

/* CLIENTE */
SELECT * FROM clientes;
UPDATE `clientes` SET `cod_lista` = 3 WHERE codigo_cliente = 1;
UPDATE `clientes` SET `cod_lista` = 3 WHERE codigo_cliente = 2;
UPDATE `clientes` SET `cod_lista` = 1 WHERE codigo_cliente = 3;
UPDATE `clientes` SET `cod_lista` = 2 WHERE codigo_cliente = 4;
UPDATE `clientes` SET `cod_lista` = 2 WHERE codigo_cliente = 5;
UPDATE `clientes` SET `cod_lista` = 2 WHERE codigo_cliente = 6;

/* PRODUCTOS */
SELECT * FROM productos;
UPDATE `productos` SET `punto_reposicion` = 300 WHERE pnro = 1;
UPDATE `productos` SET `punto_reposicion` = 100 WHERE pnro = 2;
UPDATE `productos` SET `punto_reposicion` = 100 WHERE pnro = 3;
UPDATE `productos` SET `punto_reposicion` = 120 WHERE pnro = 4;
UPDATE `productos` SET `punto_reposicion` = 200 WHERE pnro = 5;
UPDATE `productos` SET `punto_reposicion` = 200 WHERE pnro = 6;
UPDATE `productos` SET `punto_reposicion` = 50 WHERE pnro = 8;

