/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos 
Específicamos que schema estamos usando*/
use aerolinea_ez;

/*Agregamos una columna telefono a la tabla pasajero despues de la columna nro_documento*/
alter table pasajero add telefono varchar(20) not null;

/*modificamos el tipo de dato de monto en la tabla reserva*/
alter table reserva modify monto smallint not null;

/*Eliminamos la columna telefono de pasajero*/
alter table pasajero drop telefono;

/*Renombramos de fecha_alta a fecha_registro en pasajero*/
alter table pasajero rename column fecha_alta to fecha_registro;

/*Agregamos una columan llamada categpria a la tabla reserva después de la columna monto*/
alter table reserva add categoria varchar(20) after monto;

/*Agregamos una columna aerolinea en la tabla vuelo para identificar la compañía que organiza y/o es dueña de los aviones*/
alter table vuelo add aerolinea varchar(30) not null default 'Aerolinea ez';

/*Modificamos el tipo de dato de la columna email en pasajero para que acepte hasta 100 caracteres*/
alter table pasajero modify email varchar(100) not null;