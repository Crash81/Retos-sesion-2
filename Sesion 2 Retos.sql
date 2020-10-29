USE tienda;

# Reto 1
#¿Qué artículos incluyen la palabra Pasta en su nombre?
SELECT * FROM articulo WHERE nombre LIKE '%Pasta%';
#¿Qué artículos incluyen la palabra Cannelloni en su nombre?
SELECT * FROM articulo WHERE nombre LIKE '%Cannelloni%';
#¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
SELECT * FROM articulo WHERE nombre LIKE '% - %';
#¿Qué puestos incluyen la palabra Designer?
SELECT * FROM puesto WHERE nombre LIKE '%Designer%';
#¿Qué puestos incluyen la palabra Developer?
SELECT * FROM puesto WHERE nombre LIKE '%Developer%';

# Reto 2
#¿Cuál es el promedio de salario de los puestos?
SELECT avg(salario) AS salario_promedio FROM puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT count(*) AS articulos_pasta FROM articulo WHERE nombre LIKE '%Pasta%';
#¿Cuál es el salario mínimo y máximo?
SELECT min(salario) AS salario_min,max(salario) AS salario_max FROM puesto;
#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT sum(salario) FROM puesto WHERE id_puesto>(SELECT max(id_puesto)-5 ultimos FROM puesto);

# Reto 3
#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(*) AS numero_puestos FROM puesto GROUP BY nombre;
#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario) AS pago_total FROM puesto GROUP BY nombre;
#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, count(*) AS venta_empleado FROM venta GROUP BY id_empleado;
#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(*) AS venta_articulo FROM venta GROUP BY id_articulo;