-- Crear Base de Datos "Tienda";
create database tienda;

use tienda;

create table fabrica(codigo varchar(50) primary key not null, nombre varchar(100));
describe fabrica;

create table articulo(codigoArticulo varchar(50) primary key not null, nombre varchar(100), precio double, codigoFabrica varchar(50));
describe articulo;

insert into fabrica values('23', 'IBM');
insert into fabrica values('34', 'EPSON');
insert into fabrica values('12', 'COMPACT');
insert into fabrica values('4', 'PACK BELL');
insert into fabrica values('59', 'SONY');
select * from fabrica;

insert into articulo values('234895','impresora 3145', 4546.23, '34');
insert into articulo values('345282', 'PC 5672', 943.56, '12');
insert into articulo values('124537', 'mouse 37 I', 24.53, '23');
insert into articulo values('456238', 'pendrive', 159.23, '59');
insert into articulo values('234159', 'impresora TX40', 34.74, '23');
select * from articulo;

-- Obtener los nombre de los articulos de la tienda;
select nombre from articulo;

-- Obtener nombre y precio de los articulos de la tienda;
select nombre, precio from articulo;

-- Obtener el nombre de los artículos cuyos precios sean mayores o iguales $200;
select nombre, precio from articulo where precio >= 200;

-- Obtener el nombre de los articulos cuyo precio se encuentren entre 60 y 120;
select * from articulo where precio >= 60 and precio <= 120;

-- Obtener los nombres y precio en dólares de los artículos de la tienda, sabiendo que la cotización de un dólar es equivalente a $28.80;
select nombre, precio / 28.80 as "precio DOLAR" from articulo;

-- Seleccionar el precio medio de todos los artículos de la tienda;
select avg(precio) as "Precio Promedio" from articulo;

-- Obtener el precio medio de todos los artículos cuyo fabricante sea igual a 23;
select avg(precio) as "Precio Promedio" from articulo where codigoFabrica like "23";

-- Obtener la cantidad de artículos cuyo precio sea mayor o igual a 180;
select count(codigoArticulo) from articulo where precio >= 180;

-- Obtener el nombre y precio de los artículos cuyo precio sea mayor o igual a 120, y ordenarlos descendentemente por precio, y luego ordenarlos ascendentemente por nombre.;
select nombre, precio from articulo where precio >= 120 order by precio desc;
select nombre, precio from articulo where precio >= 120 order by nombre;

-- Obtener el código y nombre del artículo y el nombre correspondiente del proveedor;
select codigoArticulo, articulo.nombre, fabrica.nombre as "nombre fabricante" from fabrica, articulo where fabrica.codigo = articulo.codigoFabrica; 

-- Obtener el precio medio de los artículos que distribuye cada proveedor, informando además el código del proveedor;
select codigoFabrica, avg(precio) from fabrica, articulo where fabrica.codigo = articulo.codigoFabrica group by codigoFabrica;
select fabrica.nombre, avg(precio) from fabrica, articulo where fabrica.codigo = articulo.codigoFabrica group by codigoFabrica;
select codigoFabrica, avg(precio) from articulo group by codigoFabrica;

/* Obtener el precio medio de los artículos que distribuye cada proveedor,
informando además el nombre del proveedor. Solamente para aquellos
proveedores que posean como precio medio un valor superior o igual a 180.*/

select avg(precio), fabrica.nombre from fabrica, articulo where fabrica.codigo = articulo.codigoFabrica group by nombre having avg(precio)>= 180;

-- Obtener el nombre del artículo o artículos que sea el o los más económicos;
select nombre as "Articulo mas economico" from articulo where precio = (select min(precio) from articulo);

-- Agregar un nuevo artículo “Parlantes” cuyo precio sea $70 del fabricante 59.;
insert into articulo values('11111', 'Parlantes', 70, '59');
select * from articulo;

-- Cambiar el nombre del artículo 234159 por Impresora Láser;
update articulo set nombre = 'Impresora Láser' where codigoArticulo = '234159';

-- Aplicar un descuento del 10 % a todos los artículos de la Tienda, cuyo precio sea mayor o igual a $120;
update articulo set precio = precio-(precio*0.1) where precio >= 120;
select * from articulo;


