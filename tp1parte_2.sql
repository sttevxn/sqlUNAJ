/*Punto 1*/
-- Crear bases de datos "Escuela";
create database escuela;

/*Punto 2 y 4*/
-- Crear tabla alumnos;
use escuela;
create table alumnos(numeroLegajo int, apyNom varchar(50), tipodoc varchar(3), nDoc varchar(8), genero varchar(1), fechaNac date, lugarNac varchar(100), nacionalidad varchar(50), domicilio varchar(255), localidad varchar(100), cp varchar(10), nombreMadre varchar(50), nacionalidadMadre varchar(50), viveMadre varchar (1), nombrePadre varchar(50), nacionalidadPadre varchar(50), vivePadre varchar(1));

-- Asignar valores (15);
insert into alumnos values(1,'ArielAnriquez', 'LI', '11111111', 'm', "1990-1-1", 'Capital Federal', 'argentino', 'Alvear 1111', 'quilmes', '1111', 'Cejas Beatriz Magdalena', 'paraguaya', 's', 'Antonio Anriquez', 'paraguayo', 'n');
insert into alumnos values(2, 'BautistaBeron', 'DNI', '22222222', 'm', "1990-2-2", 'Capital Federal', 'argentino','Balvanera 2222', 'quilmes', '2222', 'Rodriguez Samanta', 'peruana', 's', 'Bertolio Beron', 'peruano', 's');
insert into alumnos values(3, 'CarlosCantero', 'DNI', '0', 'm', "1991-3-3", 'Capital Federal', 'argentino', 'Castillo 3333', 'costanera sur', '3333', 'Carolina Caceres', 'argentina', 's', 'Comanche Cantero', 'mexicano', 'n');
insert into alumnos values(4, 'DeniseDamasco', 'DNI', '44444444', 'f',"1992-4-4", 'Hurlingham', 'argentina', 'Diario 4444', 'duran', '4444', 'Dana Dolores', 'argentina', 'n', 'Danilo Damasco', 'haitiano', 's');
insert into alumnos values(5, 'ErnestoEmir', 'DNI', '55555555', 'm',"1993-5-5", 'Capital Federal', 'argentina', 'Esmeralda 5555', 'quilmes', '5555', 'Emiliana Esquivel', 'chilena', 's', 'Estiven Emir', 'argentino', 's');  
insert into alumnos values(6, 'FlorenciaFernandez', 'DNI', '66666666', 'f',"1994-6-6", 'Capital Federal', 'argentina', 'Flores 6666', 'quilmes', '6666', 'Fatima Flores', 'argentina', 's', 'Fausto Fernandez', 'argentino', 's');  
insert into alumnos values(7, 'GastonGonzales', 'DNI', '77777777', 'm',"1994-6-6", 'Capital Federal', 'argentina', 'Gamal 7777', 'quilmes', '7777', 'Gabriela Gamarra', 'argentina', 's', 'Geronimo Gaga', 'argentino', 's');  
insert into alumnos values(8, 'HarryHouse', 'DNI', '88888888', 'm',"1995-8-8", 'Capital Federal', 'argentina', 'Horse 8888', 'quilmes', '8888', 'Hanna Holy', 'chilena', 's', 'hules Hamilton', 'argentino', 's');  
insert into alumnos values(9, 'IreneIbarra', 'DNI', '99999999', 'f',"1997-2-3", 'Capital Federal', 'argentina', 'IslasMalvinas 9999', 'quilmes', '9999', 'IrisIsolina', 'chilena', 's', 'Indio Ibarra', 'argentino', 's');  
insert into alumnos values(10, 'Jose Jose', 'DNI', '10101010', 'm',"1994-5-6", 'Capital Federal', 'argentina', 'Joseando 1010', 'quilmes', '1010', 'Julia Jobs', 'chilena', 's', 'Jose JOse', 'argentino', 's');  
insert into alumnos values(11, 'Karina key', 'DNI', '11111111', 'f',"1998-2-5", 'Capital Federal', 'argentina', 'Kokemon 1111', 'quilmes', '1111', 'Kristina kobel', 'chilena', 's', 'Kobe Key', 'argentino', 's');  
insert into alumnos values(12, 'Lorena Laurens', 'DNI', '12121212', 'f',"1999-5-5", 'Capital Federal', 'argentina', 'Laprida 1212', 'quilmes', '1212', 'Laura linda', 'chilena', 's', 'Lautaro Lorem', 'argentino', 's');  
insert into alumnos values(13, 'Mariano Mendez', 'DNI', '13131313', 'm',"1943-5-5", 'Capital Federal', 'argentina', 'Magallanes 1313', 'quilmes', '5555', 'Maria Mercedes', 'chilena', 's', 'Mendeleiev Mendez', 'ruso', 's');  
insert into alumnos values(14, 'Nadia Norr', 'DNI', '14141414', 'm',"1990-3-1", 'Capital Federal', 'argentina', 'Nutrias 1414', 'quilmes', '1414', 'Nora Nansilla', 'chilena', 's', 'Nicolas Norr', 'polaco', 's');  
insert into alumnos values(15, 'Osama Obama', 'DNI', '15151515', 'm',"2001-9-9", 'Capital Federal', 'argentina', 'Oran 1515', 'quilmes', '1515', 'Olga Orende', 'chilena', 's', 'Onix Obama', 'argentino', 's');  

/*Punto 3*/
-- Verificar;
select * from alumnos;


/*Punto 5 y 6*/
-- Crear tabla Cursos;
-- Verificar la correcta creacion;
create table cursos(anio int, division varchar (1), turno varchar(1));

/*Punto 7*/
-- Cargar la tabla de cursos; 
insert into cursos values(1, 'A', 'M');
insert into cursos values(1, 'B', 'T');
insert into cursos values(2, 'A', 'M');
insert into cursos values(2, 'B', 'T');
insert into cursos values(2, 'C', 'V');
insert into cursos values(3, 'B', 'T');
insert into cursos values(3, 'C', 'V');

-- select * from cursos;

/*Punto 8 y 9*/
-- Crear tabla alumnoxCurso;
-- Verificar;
create table alumnosxCursos(anio int, division varchar(1), turno varchar(1), numeroLegajo int);
select * from alumnosxCursos;

/*Punto 10*/
-- Cargar los alumnos del punto 4 en la nueva tabla;
insert into alumnosxCursos values(1, 'A', 'M', 1);
insert into alumnosxCursos values(1, 'B', 'T', 2);
insert into alumnosxCursos values(1, 'A', 'M', 3);
insert into alumnosxCursos values(1, 'B', 'T', 4);
insert into alumnosxCursos values(1, 'A', 'M', 5);
insert into alumnosxCursos values(2, 'A', 'M', 6);
insert into alumnosxCursos values(2, 'B', 'T', 7);
insert into alumnosxCursos values(2, 'C', 'V', 8);
insert into alumnosxCursos values(2, 'A', 'M', 9);
insert into alumnosxCursos values(2, 'B', 'T', 10);
insert into alumnosxCursos values(3, 'B', 'T', 11);
insert into alumnosxCursos values(3, 'C', 'V', 12);
insert into alumnosxCursos values(3, 'B', 'T', 13);
insert into alumnosxCursos values(3, 'C', 'V', 14);
insert into alumnosxCursos values(3, 'B', 'T', 15);

-- select * from alumnosxCursos;


/*  CLASE DOS.  */

-- Metacaracteres.; 
/*
El caracter "%" sirve para reeemplazar VARIOS CARACTERES.

Ejemplo
- Para buscar nombres que empiezan con C ---> c%
- Para buscar nombres que terminan con O ---> %o
- Empiezan con C y terminan con S ---> c%s

El caracter ? reemplaza UN SOLO caracter
- Nombres de 4 letras ---> ????

- Nombres cuya segunda letra sea una A ---> ?a%


-- Consultas;

1- select campo1, campo2, campon... from tabla (Consulta mas simple)

2- select campo1, campo2, campon... from tabla 
   where <condicion> and/or <condicion>
   
3- select campo1, campo2, campon... from tabla 
   order by ... (con o sin condiciones)


-- Funciones de agregado;

1- Count (cuenta)
2- sum (suma)
3- avg (average --> promedio)
   
*/

/*Punto 11*/
-- Ordenar alfabeticamente Nombre y Apellido;
select * from alumnos order by apYNom;

/*Punto 11 -b*/
-- Cuantos alumnos tiene la tabla;
-- Uso de funciones de agregado;
select count(apYNom) from alumnos; 

/* Punto 11 -c*/
-- De cuantos alumnos se desconoce el tipo de documento;
select count(tipodoc) from alumnos where tipodoc is null; /*Solo funciona si el valor es nulo */
select count(tipodoc) from alumnos where tipodoc like "LI";

/*Punto 11 -d*/
-- Quienes son los alumnos cuyo documento no es DNI?;
select * from alumnos where tipodoc not like "DNI";

/*Punto 11 -e*/
-- Eliminar a los alumnos sin documento;
delete from alumnos where tipodoc like "LI"; 

/*Punto 11 -f*/
-- Cuantos quedaron?;
select count(apYNom) from alumnos;

/*Punto 11 -g*/
-- Cuantos alumnos son de segundo año;
select count(*) from alumnosxCursos where anio = 2;

/*Punto 11 -h*/
-- Alumnos del turno mañana;
select * from alumnos, alumnosxCursos where alumnosxCursos.turno like "M" and alumnos.numeroLegajo = alumnosxCursos.numeroLegajo;

/*Punto 11 -i*/
-- Quienes son los alumnos cuya madre no es de nacionalidad argentina?;
select * from alumnos where nacionalidadMadre not like "argentina";

/*Punto 11 -j*/
-- Quienes son los alumnos cuya madre se llama Beatriz?;
select * from alumnos where nombreMadre like "%Beatriz%";

/*Punto 11 -k*/
-- Quienes son los alumnos varones del turno vespertino?;
select * from alumnos, alumnosxCursos where alumnosxCursos.turno like "V" and alumnos.genero like "m" and alumnos.numeroLegajo = alumnosxCursos.numeroLegajo;

/*Punto 13*/
-- Modificar la estructura de la tabla “alumnos” ingresando una clave primaria "id_alumno";

alter table alumnos add unique id_alumno(numeroLegajo);

/*Punto 14*/
-- Cambiar el numero de legajo duplicado;
update alumnos set numeroLegajo = 16 where apYNom like "ArielAnriquez";


 

