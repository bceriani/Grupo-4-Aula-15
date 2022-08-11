
/*Punto 1
Realice la consulta correspondiente para crear la tabla Perro,
teniendo en cuenta sus claves foráneas y primarias.*/
use `FINALSQL`;
create table if not exists `FINALSQL`.`Perro` (
`ID_Perro` int not null auto_increment,
`Nombre`varchar(30) not null,
`Fecha_nac` date not null,
`Sexo` varchar(30) not null,
`DNI_Dueno` int not null,
primary key (`ID_Perro`),
index `fk_DNI_Dueno_inx` (`DNI_Dueno` ASC) visible,
constraint `fk_DNI_Dueno`
	foreign key (`DNI_Dueno`)
    references `FINALSQL`.`Dueno` (`DNI`)
    on delete no action
    on update no action
)
ENGINE =InnoDB;

/*Punto 2  
Inserte en la tabla correspondiente un nuevo animal (perro)
como paciente y el dueño asociado a ese animal.
la clave primaria del perro es autoincremental,
por eso no la paso como argumento en consulta */

insert into perro (Nombre, Fecha_nac, Sexo, DNI_Dueno)
values ("perro", '2020-00-00', "Macho", 22333333);

/*Punto 3
Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.*/
select * from perro
where Sexo = 'Macho'
and Fecha_nac between '2020-00-00' and '2022-00-00';