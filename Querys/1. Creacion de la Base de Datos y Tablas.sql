/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos 
Creamos la base de datos*/

/*Creamos y seteamos para que se use el schema aerolinea_ez*/
create database aerolinea_ez;
use aerolinea_ez;

/*Creamos la tabla pasajero, con su id como primary key y un constraint para que el tipo de documento
 solo pueda ser un pasaporte, dni o cuil. En el documento se menciona fecha de alta y de registro, se 
 interpreta que se refieren a una única fecha de creación del pasajero en cuestión y es un error de tipeo.*/
create table pasajero(
	pasajero_id int not null auto_increment primary key,
    nombre varchar(30) not null,
    apellido varchar (50) not null,
    nacionalidad varchar(30) not null,
    telefono varchar(20) not null,
    email varchar(60) not null,
    tipo_documento varchar(15) not null,
    nro_documento smallint not null,
    fecha_registro datetime default current_timestamp,
    constraint chk_documento check (tipo_documento in ('dni','cuil', 'pasaporte'))
);

/*Creamos la tabla vuelo. Como los tiempos de salida no son subidos en el momento de la salida per se no lo seteamos 
por default al momento de creacion del vuelo. El combustible lo seteamos como varchar para poder agregar lts al final
del numero. No creamos una relación con la tabla avión porque como todavia no existe nuestra query no va a funcionar*/
create table vuelo(
	vuelo_id int not null auto_increment primary key,
    avion_id int not null,
	origen varchar(20) not null,
    destino varchar(20) not null,
    fecha_salida datetime not null,
    fecha_estimada_arribo datetime not null,
    combustible varchar(10) not null default 5,
    capacidad smallint not null default 5
);

/*creamos la tabla reserva añadimos como default en forma de pago transferencia bancaria y chequeamos que los valores sean ese, 
efectivo o tarjeta de crédito. Agregamos también las referencias a las otras tablas.*/
create table reserva(
	reserva_id int not null auto_increment primary key,
    pasajero_id int not null,
    vuelo_id int not null,
    fecha_reserva datetime not null,
    monto int not null default 25000,
    forma_pago varchar(30) not null default 'transferencia bancaria',
    foreign key(pasajero_id) references pasajero(pasajero_id),
    foreign key(vuelo_id) references vuelo(vuelo_id),
	constraint chk_fp check (forma_pago in ('efectivo','tarjeta de credito', 'transferencia bancaria'))
);

create table avion(
	avion_id int not null auto_increment primary key,
    vuelo_id int not null,
    marca varchar(20) not null,
    modelo varchar(20) not null,
    anio_contratacion smallint not null,
    activo boolean default true, /*Creamos la variable activo, poniendola como booleano. true=activo, false=inactivo*/
    foreign key (vuelo_id) references vuelo(vuelo_id)
);
