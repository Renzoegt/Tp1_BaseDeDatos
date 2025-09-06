/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos 
Específicamos que schema estamos usando*/
use aerolinea_ez;

/*Agregamos una columna telefono a la tabla pasajero despues de la columna nro_documento*/
alter table pasajero add telefono varchar(20) not null;

/*modificamos el tipo de dato de monto en la tabla reserva*/
alter table reserva modify monto smallint not null;

/**/