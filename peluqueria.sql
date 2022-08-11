create database peluqueria;

use peluqueria;

-- tabla dueño
create table dueño (
DNI int,
Nombre varchar(50),
Apellido varchar(50),
Telefono int,
Direccion varchar(50),
constraint pk_DNI primary key(DNI)
)

-- tabla perro
create table perro(
ID_perro int,
Nombre varchar(50),
Fecha_nac date,
Sexo varchar(50),
DNI_dueno int,
constraint pk_ID_perro primary key(ID_perro),
constraint fk_DNI_dueno foreign key(DNI_dueno) references dueño (DNI)
)

-- tabla historial
create table historial(
ID_historial int,
Fecha date,
Perro int,
Descripcion varchar(100),
Monto float,
constraint pk_ID_historial primary key(ID_historial),
constraint fk_Perro foreign key(Perro) references perro (ID_perro)
)


insert into dueño values(20224010, 'Alejandro', 'Perez', 24252627, '221 b baker street');
insert into perro values(1, 'Figo', '2020-12-04', 'Macho', 20224010);
insert into historial values(1, '2022-08-10', 1, 'es jugueton', 2.500);

insert into dueño values(20224011, 'Paola', 'Muñoz', 115246, 'chile');
insert into perro values(2, 'Mochi', '2010-05-03', 'Macho', 20224011);
insert into historial values(2, '2020-03-15', 2, 'le gusta dormir', 3.500);
