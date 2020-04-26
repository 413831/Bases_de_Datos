/*1. Obtener la cantidad de unidades máxima.*/

SELECT MAX(cantidad) FROM item_ventas;

/*2. Obtener la cantidad total de unidades vendidas del producto c.*/

SELECT SUM(iv.cantidad) AS cantidad_total FROM ventas AS v, item_ventas AS iv, productos AS pd 
WHERE iv.numero_factura = v.numero_factura AND iv.codigo_producto = pd.PNRO AND pd.PNOMBRE = 'c';

/*3. Cantidad de unidades vendidas por producto, indicando la descripción del producto, ordenado de mayor a menor por las cantidades vendidas.*/

SELECT pd.PNOMBRE, iv.cantidad FROM ventas AS v, item_ventas AS iv, productos AS pd 
WHERE iv.numero_factura = v.numero_factura AND iv.codigo_producto = pd.PNRO ORDER BY iv.cantidad DESC;

/*4. Cantidad de unidades vendidas por producto, indicando la descripción del producto, 
ordenado alfabéticamente por nombre de producto para los productos que vendieron más de 30 unidades.*/

SELECT pd.PNOMBRE, iv.cantidad FROM ventas AS v, item_ventas AS iv, productos AS pd 
WHERE iv.numero_factura = v.numero_factura AND iv.codigo_producto = pd.PNRO AND iv.cantidad > 30 ORDER BY pd.PNOMBRE;

/*5. Obtener cuantas compras (1 factura = 1 compra) realizó cada cliente indicando el código y nombre del cliente ordenado de mayor a menor.*/

SELECT COUNT(ventas.numero_factura) AS total_facturas, ventas.codigo_cliente ,clientes.nombre FROM ventas, clientes
WHERE ventas.codigo_cliente = clientes.codigo_cliente GROUP BY ventas.codigo_cliente ;

/*6. Promedio de unidades vendidas por producto, indicando el código del producto para el cliente 1.*/

SELECT iv.codigo_producto, v.codigo_cliente, AVG(iv.cantidad) AS promedio_ventas FROM ventas AS v, item_ventas AS iv 
WHERE v.numero_factura = iv.numero_factura AND v.codigo_cliente = 1 GROUP BY iv.codigo_producto;
