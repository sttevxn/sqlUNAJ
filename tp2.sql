create database tienda;

-- creacion de tablas;
use tienda;
create table fabrica(codigo int primary key not null, nombre varchar(80)); -- incorporacion de una PK;
insert into fabrica values(23,'IBM');

create table articulo( codigo int primary key not null, nombre varchar(80), precio double, fabrica int);
insert into articulo values(234895, 'impresora 3145', 456.23, 34);

describe fabrica;
select * from fabrica;
describe articulo;
select * from articulo;

/*Punto 1*/
-- Obtener los nombres de los artículos de la tienda.;
select nombre from articulo;

/*Punto 2*/
-- Obtener nombre y precio;

/*Punto 3*/
-- Obtener los nombres y los precios de los artículos de la tienda.;

/*Punto 4*/
-- Obtener todos los datos de los artículos cuyos precios se encuentren entre $60 y $120 (ambos valores deben ser contemplados);
select * from articulo where precio >= 60 and precio <= 120;
insert into articulo values(111, 'ejemplo 3145', 60, 34);

/*Punto 5*/
-- Obtener los nombres y precio en dólares de los artículos de la tienda, sabiendoque la cotización de un dólar es equivalente a $28.80.;
select nombre, precio/28.80 as precioEnDolares from articulo;

/*Punto 6*/
-- Seleccionar el precio medio de todos los artículos de la tienda.;
select avg(precio) from articulo;

/*Punto 10*/
-- Obtener el código y nombre del artículo y el nombre correspondiente del proveedor.;

/*Punto 11*/
-- Obtener el precio medio de los artículos que distribuye cada proveedor,informando además el código del proveedor;
select fabrica, avg(precio) from articulo group by fabrica order by fabrica;

/*Punto 12 */
/*
Obtener el precio medio de los artículos que distribuye cada proveedor,
informando además el nombre del proveedor. Solamente para aquellos
proveedores que posean como precio medio un valor superior o igual a 180;
*/

select fabrica.nombre, nombre avg(articulo.precio) from farbica, articulo where fabrica.codigo = articulo.fabrica group by fabrica.nombre having avg(articulo.precio) >=180; 




