CREATE TABLE ventas
(numero_factura INT NOT NULL,
codigo_cliente INT NOT NULL,
fecha DATE,
PRIMARY KEY (numero_factura, codigo_cliente),
FOREIGN KEY (numero_factura) REFERENCES item_ventas
(numero_factura),
FOREIGN KEY (codigo_cliente) REFERENCES clientes
(codigo_cliente));


CREATE TABLE `item_ventas` (
  `numero_factura` int NOT NULL,
  `codigo_producto` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`numero_factura`, `codigo_producto`), FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`PNRO`)
) 

CREATE TABLE PRODUCTOS
(PNRO INT NOT NULL,
PNOMBRE VARCHAR(20) NOT NULL,
PRECIO INT NOT NULL,
TAMAÑO VARCHAR(20),
LOCALIDAD VARCHAR(12) NOT NULL,
PRIMARY KEY (PNRO));

CREATE TABLE proveedores_productos
(NUMERO INT NOT NULL,
PNRO INT NOT NULL,
CANTIDAD INT NOT NULL,
PRIMARY KEY (NUMERO, PNRO),
FOREIGN KEY (NUMERO) REFERENCES PROVEEDORES
(NUMERO),
FOREIGN KEY (PNRO) REFERENCES PRODUCTOS (PNRO));