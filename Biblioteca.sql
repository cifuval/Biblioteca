CREATE DATABASE Biblioteca

use Biblioteca

--- Create table Pais 
 create table Pais(
 Id int identity not null ,
 CONSTRAINT pk_Pais_Id primary key (Id),
 Pais varchar (30) not null
 )
 
--- Create table Ciudad
 create table Ciudad(
 Id int identity not null ,
 CONSTRAINT pk_Ciudad_Id primary key (Id),
 Ciudad varchar (40) not null,
 Id_Pais int not null,
 CONSTRAINT fk_Ciudad_Id_Pais foreign key (Id_Pais) references Pais(Id)
 )

--- Create table Autor
create table Autor(
Id int identity not null ,
CONSTRAINT pk_Autor_Id primary key (Id),
Nombre varchar(60) not null,
Id_Pais int not null,
CONSTRAINT fk_Autor_Id_Pais foreign key (Id_Pais) references Pais(Id)
)

 --- Create table Editorial
 create table Editorial(
 Id int identity not null ,
 CONSTRAINT pk_Editorial_Id primary key (Id), 
 Editorial varchar (40) not null ,
 Id_Ciudad int not null ,
 CONSTRAINT fk_Editorial_Id_Ciudad foreign key (Id_Ciudad) references Ciudad(Id)
 )

 --- Create table Documento
 create table Documento (
 Id int identity not null,
 CONSTRAINT pk_Documento_Id primary key (Id),
 Tipo varchar (20) not null,
 Titulo varchar (100) not null,
 Año int not null ,
 Id_Editorial int not null,
 Paginas int not null ,
 CONSTRAINT fk_Libro_Id_Editorial foreign key (Id_Editorial) references Editorial(Id)
 )
 
--- Create table Libro
create table Libro (
Id int not null,
CONSTRAINT fk_Libro_Id foreign key (Id) references Documento(Id),
Edicion int not null ,
ISBN varchar(13) UNIQUE
)

--- Create table Documiento_Seriado
create table Documento_Seriado(
Id int not null,
CONSTRAINT fk_Documento_Seriado_Id foreign key (Id) references Documento(Id),
Volumen int,
ISSN varchar(8) UNIQUE
)

--- Create table Documento_Autor
create table Documento_Autor(
Id_Documento int ,
CONSTRAINT fk_Documento_Autor_Id_Documento foreign key (Id_Documento) references Documento(Id), 
Id_Autor int not null ,
CONSTRAINT fk_Documento_Autor_Id_Autor foreign key (Id_Autor) references Autor(Id),
CONSTRAINT pk_Documento_Autor primary key (Id_Documento,Id_Autor)
)

  --- Create table Tema
 create table Tema (
 Id int identity not null ,
 CONSTRAINT pk_Tema_Id primary key (Id),
 Tema varchar (25) not null
 )

 --- Create table Documento_Tema
 create table Documento_Tema (
 Id_Documento int not null ,
 CONSTRAINT fk_Documento_Tema_Id_Documento foreign key (Id_Documento) references Documento(Id),
 Id_Tema int not null ,
 CONSTRAINT fk_Documento_Tema_Id_Tema foreign key (Id_Tema) references Tema(Id),
 CONSTRAINT pk_Documento_Tema primary key (Id_Documento,Id_Tema)
 ) 
 