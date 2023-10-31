create database biblioteca;
use biblioteca; 
create table autor(nombre varchar(50) primary key not null, nacionalidad varchar(30), fechaNacimiento date);
create table autorxLibro(nombre varchar(50), isbn varchar(50), primary key(nombre, isbn));
create table libro(isbn varchar(50) primary key not null, titulo varchar(100), idioma varchar(50), numeroPaginas varchar(50), biblioteca varchar(50), estante varchar(50));
create table edicion(anio varchar(50), isbn varchar(50));
create table copia(numeroCopia varchar(100), isbn varchar(50), primary key(numeroCopia, isbn));
create table prestamo(dniCliente varchar(50), isbn varchar(50), numeroCopia varchar(50), precio int, fechaPrestamo date, fechaDevolucion date, primary key(dniCliente, isbn));
create table usuario(dniCliente varchar(50) primary key not null, apYNom varchar(100), domicilio varchar(500));

insert into autor values('julio cortazar', 'argentino', "1914-8-2");

 
 