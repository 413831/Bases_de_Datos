/* Escribo las consultas realizadas en mySQL que pude probar y las que serian para una db de Oracle guiandome por el apunte*/
/*1) Cuáles tablas contienen la columna LOCALIDAD?*/

SELECT TBLNAME FROM SYSCOLUMNS WHERE NAME=’LOCALIDAD’;
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME= 'LOCALIDAD';

/*2) Cuántas columnas tiene la tabla PRODUCTOS?*/

SELECT  COLCOUNT FROM SYSTABLES WHERE NAME = ’Productos’;
SELECT COUNT(COLUMN_NAME) FROM INFORMATION_SCHEMA.COLUMNS AS c WHERE c.TABLE_NAME = 'Productos';

/*3) Obtener una lista de todos los usuarios dueños de por lo menos una tabla, junto con el número de tablas que le pertenecen a cada uno.*/

SELECT CREATOR , COUNT(CREATOR ) FROM SYSTABLES GROUP BY CREATOR;
SELECT user_tables.owner FROM user_tables;

/*4) Obtener una lista de los nombres de todas las tablas que tienen por lo menos un índice.*/

SELECT DISTINCT TBLNAME FROM SYSINDEXES;
SELECT DISTINCT TABLE_NAME, INDEX_NAME FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA = 'bd_practica';
