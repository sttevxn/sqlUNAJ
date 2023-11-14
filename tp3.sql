create database proyectos;
use proyectos;

create table cientificos(codigo varchar(50) primary key not null, nombre varchar(50), apellido varchar(50));
describe cientificos;

create table proyecto(codigo varchar(50) primary key not null, nombre varchar(100));
describe proyecto;

create table proyecto_cientifico(codigoProyecto varchar(50) not null, codigoCientifico varchar(50) not null, horas int , primary key(codigoProyecto, codigoCientifico));
describe proyecto_cientifico;

insert into cientificos values('23', 'Juan Carlos', 'Echeverria');
insert into cientificos values('12', 'Oscar', 'Sanchez');
insert into cientificos values('24', 'Maria', 'Vicuña');
insert into cientificos values('59', 'Pedro', 'Rosales');
select * from cientificos;

insert into proyecto values('392', 'Sistema Integral de Ticket (GIT)');
insert into proyecto values('817', 'Sistema Gestion Comercial (SIGECO)');
select * from proyecto;

insert into proyecto_cientifico values('392', '24', 32);
insert into proyecto_cientifico values('817', '24', 14);
insert into proyecto_cientifico values('817', '59', 21);
insert into proyecto_cientifico values('392', '23', 28);
insert into proyecto_cientifico values('392', '59', 39);
select * from proyecto_cientifico;

/*
Obtener todos los datos de los científicos incluyendo el nombre de los
proyectos asignados a cada uno de los ellos
*/
select cientificos.*, proyecto.nombre as "Proyecto Asignado"
from cientificos, proyecto_cientifico, proyecto 
where cientificos.codigo = proyecto_cientifico.codigoCIentifico 
and proyecto.codigo = proyecto_cientifico.codigoProyecto; 

/*
Cuál es el o los proyectos asignados al científico cuyo código es 24,
informando código y nombre de cada proyecto
*/
select proyecto.codigo, proyecto.nombre 
from proyecto, cientificos, proyecto_cientifico
where cientificos.codigo = proyecto_cientifico.codigoCientifico
and proyecto.codigo = proyecto_cientifico.codigoProyecto
and cientificos.codigo like "24";

/*
Cuál es el o los científicos asignados al proyecto cuyo código sea 817,
informando apellido y nombre ordenado por apellido ascendentemente.
*/
select cientificos.apellido, cientificos.nombre
from cientificos, proyecto, proyecto_cientifico
where cientificos.codigo = proyecto_cientifico.codigoCientifico
and proyecto.codigo = proyecto_cientifico.codigoProyecto
and proyecto.codigo like "817"
order by cientificos.apellido;

/*
Obtener número de proyectos asignados a cada uno de los científicos y sus
datos
*/
select cientificos.codigo, cientificos.nombre, cientificos.apellido, count(proyecto_cientifico.codigoCientifico)
as "Cantidad Proyectos Asignados"
from cientificos, proyecto, proyecto_cientifico
where cientificos.codigo = proyecto_cientifico.codigoCientifico
and proyecto.codigo = proyecto_cientifico.codigoProyecto
group by cientificos.codigo, cientificos.nombre, cientificos.apellido;

/*
Obtener el número de horas totales de cada proyecto por científico
*/
select cientificos.codigo, sum(proyecto_cientifico.horas)
as "Horas totales"
from cientificos, proyecto, proyecto_cientifico
where cientificos.codigo = proyecto_cientifico.codigoCientifico
and proyecto.codigo = proyecto_cientifico.codigoProyecto
group by cientificos.codigo;

/*
Obtener todos los datos de los científicos asignados a más de un proyecto
*/
select cientificos.nombre 
from cientificos, proyecto_cientifico
where cientificos.codigo = proyecto_cientifico.codigoCientifico
group by cientificos.nombre
having count(proyecto_cientifico.codigoCientifico)>1;

/*
Obtener los datos del proyecto o los proyectos que tienen asignado un solo
científico.
*/
select proyecto.nombre
from proyecto, proyecto_cientifico
where proyecto.codigo = proyecto_cientifico.codigoProyecto
group by proyecto.nombre
having count(proyecto_cientifico.codigoCientifico)=1; 

insert into proyecto values('111', 'HEXAGINNERING');
insert into proyecto_cientifico values('111', '23', 7);

