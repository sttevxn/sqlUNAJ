create database tienda;
use tienda;

create table productos(codigo varchar(50) primary key not null, marca varchar(50), tipo varchar(50), sabor varchar(50), envase varchar(50), peso int, precio int);
describe productos;

create table usos(codigo varchar(50) primary key not null, utilidad varchar(50));
describe usos;

create table ubicaciones(codigo varchar(50) primary key not null, ubicacion varchar(50));
describe ubicaciones;

insert into productos values('1', 'riera', 'semilla', 'chia', 'bolsa', 250, 300);
insert into productos values('2', 'riera', 'semilla', 'lino', 'bolsa', 500, 500);
insert into productos values('3', 'riera', 'semilla', 'girasol', 'bolsa', 1000, 800);
insert into productos values('4', 'arcor', 'mermelada', 'frutilla', 'frasco', 400, 450);
insert into productos values('5', 'arcor', 'mermelada', 'durazno', 'frasco', 400, 450);
insert into productos values('6', 'arcor', 'mermelada', 'naranja', 'frasco', 400, 450);
insert into productos values('7', 'arcor', 'mermelada', 'frutos rojos', 'frasco', 400, 450);
insert into productos values('8', 'noel', 'mermelada', 'durazno', 'frasco', 400, 380);
insert into productos values('9', 'limay', 'mermelada', 'durazno', 'frasco', 400, 350);
insert into productos values('10', 'noel', 'mermelada', 'frutilla', 'frasco', 400, 380);
insert into productos values('20', 'inca', 'hierba', 'aloe vera', 'bolsa', 500, 400);
insert into productos values('25', 'inca', 'hierba', 'arandano', 'bolsa', 500, 400);
insert into productos values('27', 'inca', 'hierba', 'soja', 'bolsa', 500, 400);
insert into productos values('29', 'inca', 'hierba', 'valeriana', 'bolsa', 500, 400);
insert into productos values('55', 'playadito', 'yerba', '', 'bolsa', 1000, 750);
select * from productos;

insert into usos values('1','condimento');
insert into usos values('2','condimento');
insert into usos values('3','condimento');
insert into usos values('4','endulzante');
insert into usos values('5','endulzante');
insert into usos values('6','endulzante');
insert into usos values('7','endulzante');
insert into usos values('8','endulzante');
insert into usos values('9','endulzante');
insert into usos values('10','endulzante');
insert into usos values('20','laxante');
insert into usos values('25','infecciones urinarias');
insert into usos values('27','menopausia e hipertension');
insert into usos values('29','hipertension');
insert into usos values('99','desinfectante');
select * from usos;

insert into ubicaciones values('1', 'gondola entrada');
insert into ubicaciones values('2', 'gondola entrada');
insert into ubicaciones values('3', 'gondola entrada');
insert into ubicaciones values('4', 'exhibidora vertical');
insert into ubicaciones values('5', 'exhibidora vertical');
insert into ubicaciones values('6', 'exhibidora vertical');
insert into ubicaciones values('7', 'exhibidora vertical');
insert into ubicaciones values('8', 'exhibidora vertical');
insert into ubicaciones values('9', 'exhibidora vertical');
insert into ubicaciones values('10', 'exhibidora vertical');
insert into ubicaciones values('20', 'mostrador');
insert into ubicaciones values('25', 'mostrador');
insert into ubicaciones values('27', 'mostrador');
insert into ubicaciones values('29', 'mostrador');
select * from ubicaciones;

/*
Marca, tipo, sabor y ubicacion de los productos
comercializados en bolsa
ordenados por precio de forma descendente 
*/
select productos.marca, productos.tipo, productos.sabor, productos.precio, ubicaciones.ubicacion 
from productos, ubicaciones
where productos.codigo = ubicaciones.codigo
and productos.envase like "bolsa"
order by productos.precio desc;

/*
Marca, tipo, ubicacion y sabor de los productos
aptos para la hipertension
*/
select productos.marca, productos.tipo, productos.sabor, ubicaciones.ubicacion
from productos, usos, ubicaciones
where productos.codigo = usos.codigo
and productos.codigo = ubicaciones.codigo
and usos.utilidad like "%hipertension%";

/*
Cantidad
de condimentos que se venden por kilo
*/
select count(usos.utilidad)
as "Condimentos por kilo"
from productos, usos
where productos.codigo = usos.codigo
and productos.peso >= 1000
and usos.utilidad like "condimento";

/*
Precio promedio 
de las mermeladas de durazno
*/
select avg(precio)
as "Precio promedio"
from productos
where tipo like "mermelada"
and sabor like "durazno";

/*
Aumentar un 15% los precios
de los condimentos 
*/
select productos.marca, productos.tipo, productos.sabor, productos.precio * 1.15
as "precio aumentado 15%"
from productos, usos
where productos.codigo = usos.codigo
and usos.utilidad like "condimento";

/*
Marca y tipo 
de los productos 
que no se encuentren en "exhibicion"
*/
select productos.marca, productos.tipo
from productos
left outer join ubicaciones
on productos.codigo = ubicaciones.codigo
where ubicaciones.codigo is null; 

/*
Tipos 
de productos
sin stock
*/

/*
Precio promedio
de los productos 
por tipo de envase
*/
select envase, avg(precio)
as "Precio promedio"
from productos
group by envase;

/*
Ubicacion y cantidad
de productos de cada ubicacion
*/
select ubicacion, count(*)
as "Cantidad de productos"
from ubicaciones
group by ubicacion;

/*
Eliminar
los productos 
que no se venden en bolsas de 500 gramos   
*/
delete
from productos 
where peso != 500
and envase not like "bolsa";





