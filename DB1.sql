create database escuela;
use escuela;
create table alumnos(nleg int, apynom varchar(50), tipodoc varchar(3), ndoc varchar(8), sexo varchar(1), fnac date,lugarnac varchar(100) ,nacion varchar(50), domicilio varchar(255), localidad varchar(100), codigopostal varchar(10), madre varchar(50), nacmadre varchar(50), vivemadre varchar (1), padre varchar(50), nacpadre varchar(50), vivepadre varchar(1));
describe alumnos;

/* CARGAR DATOS DE ALUMNOS*/

insert into alumnos values(25,'perezjuan', 'dni', '23145675','m',"1987-12-05",'capital federal','argentino','Alvear 5674 piso 2','Temperley','1834','cejas beatriz Magdalena','argentina','s','perez ricardo','argentino','n' );

/*VER CONTENIDO DE UNA TABLA*/

select * from alumnos;
