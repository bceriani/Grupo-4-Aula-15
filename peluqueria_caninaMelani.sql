create database PeluqueriaCanina

use PeluqueriaCanina;
go

create table Duenos
(DNI int,
Nombre varchar (30),
Apellido varchar(30),
Telefono int,
Direccion varchar(50),
primary key (DNI)
);

create table Perro
(id_Perro int, 
Nom_perro varchar(30),
Fec_nac datetime,
Sexo varchar(10),
DNI_dueno int,
constraint pk_Perro primary key (id_Perro),
constraint fk_dni_dueno foreign key (DNI_dueno) references Duenos(DNI)
);

create table Historial
(id_Historial int,
Fecha datetime,
Perro int,
Descripcion varchar (100),
Monto money,
constraint pk_historial primary key (id_Historial),
constraint fk_perro foreign key (Perro) references Perro(id_Perro)
);


/*INSERTAR DUEÑOS*/
insert into Duenos
values ('28965951','Eric','Aranda','3648521','peru 78')

insert into Duenos
values ('38461987','James','Rodriguez','4725124','Santiago del Estero 555')

insert into Duenos
values ('22458631','Gabriela','Andrade','4286157','Rivadavia 6145')

insert into Duenos
values ('31457258','Rogelio','Hernandez','3421569','Mariano Moreno 63')

insert into Duenos
values ('20364789','Gustavo','Perez','1547896','Mitre 425')

/*CONSULTAR TODOS LOS DUEÑOS*/
select *
from Duenos


/*INSERTAR PERROS*/
insert into Perro
values ('101', 'Lunita', '12/03/21', 'Femenino', '28965951')

insert into Perro
values ('245', 'Pepe', '29/10/19', 'Masculino', '38461987')

insert into Perro
values ('147', 'Chicha', '01/07/21', 'Masculino', '22458631')

insert into Perro
values ('222', 'Ricarda', '04/08/16', 'Femenino', '31457258')

insert into Perro
values ('213', 'Pequita', '21/06/19', 'Femenino', '20364789')

/*CONSULTAR LOS PERROS*/
select *
from Perro

/*EJERCICIO 9- BD:
Escriba una consulta que permita actualizar la direccion de un dueño.
Su nueva direccion es Libertad 123.*/

update Duenos
set Direccion = 'Libertad 123'
where DNI = 28965951
/*Verificamos:*/
select *
from Duenos


