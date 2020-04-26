/*Consultas simples (una sola tabla)
1. Obtener una lista con los nombres de las distintas oficinas de la empresa.*/

SELECT oficinas.descripción FROM oficinas;

/*2. Obtener una lista de todos los productos indicando descripción del producto, su precio de costo y su precio de costo IVA incluído (tomar el IVA como 21%).*/

SELECT productos.pnombre, productos.precio, (productos.precio * 1.21) FROM productos;

/*3. Obtener una lista indicando para cada empleado apellido, nombre, fecha de cumpleaños y edad.*/

SELECT empleados.apellido, empleados.nombre, empleados.fecha_nacimiento, YEAR(CURDATE()) - YEAR(fecha_nacimiento) AS edad FROM empleados;

/*4. Listar todos los empleados que tiene un jefe asignado.*/

SELECT * FROM empleados WHERE empleados.cod_jefe IS NOT NULL;

/*5. Listar los empleados de nombre “María” ordenado por apellido.*/

SELECT * FROM empleados WHERE nombre = 'Maria' ORDER BY apellido;

/*6. Listar los clientes cuya razón social comience con “L” ordenado por código de cliente.*/

SELECT * FROM clientes WHERE razon_social LIKE 'L%' ORDER BY codigo_cliente;

/*7. Listar toda la información de los pedidos de Marzo ordenado por fecha de pedido.*/

SELECT * FROM pedidos WHERE MONTH(fecha_pedido) = 3 ORDER BY fecha_pedido;

/*8. Listar las oficinas que no tienen asignado director.*/

SELECT * FROM oficinas WHERE codigo_director IS NULL;

/*9. Listar los 4 productos de menor precio de costo.*/

SELECT * FROM productos ORDER BY precio ASC LIMIT 4; 

/*10. Listar los códigos de empleados de los tres que tengan la mayor cuota.*/

SELECT cod_empleado FROM datos_contratos ORDER BY cuota DESC LIMIT 3;