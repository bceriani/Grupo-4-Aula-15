SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

create schema if not exists `FINALSQL` default character set utf8;

use `FINALSQL`;

create table if not exists `FINALSQL`.`Dueno` (
	`DNI` int not null,
    `Nombre` varchar(30) not null,
    `Apellido` varchar(30) not null,
    `Telefono` varchar(30) not null,
    `Direccion` varchar(45) not null,    
    primary key (`DNI`)
)
ENGINE = InnoDB;

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

create table if not exists `FINALSQL`.`Historial` (
`ID_Historial` int not null auto_increment,
`Fecha` datetime not null,
`Perro`int not null,
`Descripción` varchar(200) not null,
`Monto` float not null,
primary key (`ID_Historial`),
index `fk_Perro_inx` (`Perro` ASC) visible,
constraint `fk_Perro`
	foreign key(`Perro`)
    references `FINALSQL`.`Perro` (`ID_Perro`)
    on delete no action
    on update no action
)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

