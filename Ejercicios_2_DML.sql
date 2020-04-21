/*1  Obtener los detalles completos de todos los productos.*/
select * from productos;
        
/*2  Obtener los detalles completos de todos los proveedores de Capital.*/
	select * from proveedores where proveedores.localidad = "Villa Soldati";
    
/*3  Obtener todos los envíos en los cuales la cantidad está entre 200 y 300 inclusive.*/
SELECT * FROM proveedores_productos WHERE cantidad BETWEEN 40 AND 100;

/*4 Obtener los números de los productos suministrados por algún proveedor de Avellaneda.*/
SELECT pd.pnro, pd.pnombre, pd.localidad FROM productos AS pd WHERE pd.localidad = 'Avellanegra';

/*5 Obtener la cantidad total del producto 001 enviado por el proveedor 103.*/
SELECT pvpd.pnro, SUM(pvpd.cantidad) AS cantidad FROM proveedores_productos AS pvpd 
WHERE pvpd.numero = '103' AND pvpd.pnro = '1';

/*6 Obtener los números de los productos y localidades en los cuales la segunda letra del nombre de la localidad sea A.*/
SELECT productos.pnombre, productos.localidad FROM productos WHERE productos.localidad LIKE '_a%';

/*Obtener los precios de los productos enviados por el proveedor 102.*/
SELECT pd.precio, pd.pnombre FROM productos AS pd, proveedores_productos AS pvpd WHERE pd.pnro = pvpd.pnro AND pvpd.numero = '102';

/*8) Construir una lista de todas las localidades en las cuales esté situado por lo menos un proveedor o un producto.*/
SELECT pd.localidad FROM productos AS pd, proveedores AS pv GROUP BY pd.localidad HAVING COUNT(pd.localidad) > 1; /*??????????*/

/*9) Cambiar a “Chico” el tamaño de todos los productos medianos.*/
UPDATE productos SET `TAMAÑO` = 'chico' WHERE tamaño = 'mediano';

/*10) Eliminar todos lo sproductos para los cuales no haya envíos.*/
DELETE FROM productos WHERE NOT EXISTS (SELECT * FROM proveedores_productos WHERE proveedores_productos.pnro = productos.pnro )

/*11) Insertar un nuevo proveedor (107) en la tabla PROVEEDORES. 
El nombre y la localidad son Rosales y Wilde respectivamente; el domicilio no se conoce todavía.*/

