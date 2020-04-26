/*
Consultas multitablas
1. De cada producto listar descripción, razón social del fabricante y stock ordenado por razón social y descripción.*/

SELECT pd.PNOMBRE, fb.razon_social, pd.cantidad_stock FROM productos AS pd, fabricantes AS fb ORDER BY fb.razon_social, pd.PNOMBRE;

/*2. De cada pedido listar código de pedido, fecha de pedido, apellido del empleado y razón social del cliente.*/

SELECT pedidos.cod_pedido, pedidos.fecha_pedido, empleados.apellido, clientes.razon_social FROM pedidos, empleados, clientes
WHERE pedidos.cod_empleado = empleados.id AND pedidos.cod_cliente = clientes.codigo_cliente;

/*3. Listar por cada empleado apellido, cuota asignada, oficina a la que pertenece ordenado en forma descendente por cuota.*/

SELECT e.apellido, dt_c.cuota, o.descripción FROM empleados AS e, datos_contratos AS dt_c, oficinas AS o 
WHERE e.id = dt_c.cod_empleado AND e.cod_oficina = o.cod_oficina ORDER BY dt_c.cuota DESC;

/*4. Listar sin repetir la razón social de todos aquellos clientes que hicieron pedidos en Abril.*/

SELECT DISTINCT(clientes.razon_social) FROM clientes, pedidos WHERE clientes.codigo_cliente = pedidos.cod_cliente 
AND MONTH(pedidos.fecha_pedido) = 4;

/*5. Listar sin repetir los productos que fueron pedidos en Marzo.*/

SELECT productos.* FROM detalle_pedidos, pedidos, productos WHERE detalle_pedidos.cod_pedido = pedidos.cod_pedido 
AND detalle_pedidos.cod_producto = productos.PNRO AND MONTH(pedidos.fecha_pedido) = 4;

/*6. Listar aquellos empleados que están contratados por más de 10 años ordenado por cantidad de años en forma descendente.*/

SELECT e.* FROM empleados AS e, datos_contratos AS dt_c WHERE e.id = dt_c.cod_empleado AND YEAR(dt_c.fecha_contrato) > 10 
ORDER BY YEAR(CURDATE()) - YEAR(dt_c.fecha_contrato) DESC;

/*7. Obtener una lista de los clientes mayoristas ordenada por razón social*/

SELECT clientes.* FROM clientes, listas WHERE clientes.cod_lista = listas.cod_lista AND listas.descripcion = 'mayorista' 
ORDER BY clientes.razon_social;

/*8. Obtener una lista sin repetir que indique qué productos compró cada cliente, ordenada por razón social y descripción.*/

SELECT DISTINCT pd.PNOMBRE, c.codigo_cliente, c.razon_social FROM productos AS pd, detalle_pedidos AS dl_pd, clientes AS c, pedidos AS p
WHERE pd.PNRO = dl_pd.cod_producto AND c.codigo_cliente = p.cod_cliente ORDER BY c.razon_social, pd.PNOMBRE ;

/*9. Obtener una lista con la descripción de aquellos productos cuyo stock está por debajo del punto de reposición indicando cantidad a comprar 
y razón social del fabricante ordenada por razón social y descripción.*/

SELECT pd.PNOMBRE, (pd.punto_reposicion - pd.cantidad_stock) AS cantidad_a_comprar, f.razon_social FROM productos AS pd, fabricantes AS f
WHERE pd.cod_fabricante = f.cod_fabricante AND pd.cantidad_stock < pd.punto_reposicion;

/*10. Listar aquellos empleados cuya cuota es menor a 50000 o mayor a 100000.*/

SELECT e.* FROM empleados AS e, datos_contratos AS dt_c WHERE e.id = dt_c.cod_empleado AND dt_c.cuota NOT BETWEEN 50000 AND 100000;
