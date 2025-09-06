/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos 
Específicamos que schema estamos usando*/
use aerolinea_ez;

/*Listar los pasajeros cuyo apellido sea “Gómez” y cuyo email contenga “gmail.com”*/
select * from pasajero where apellido = 'Gomez' and email like '%gmail.com%';

/*Listar los aviones con capacidad mayor o igual 150 o menor o igual a 300 (ninguno cumple esta condición asi que recibiremos una salida sin nada)*/
select * from vuelo where capacidad >= 150 or capacidad <= 300;

/*Listar las reservas cuyo total sea mayor a 100000 y forma de pago igual a “tarjeta de credito”*/
select * from reserva where monto > 100000 and forma_pago = 'tarjeta de credito';

/*Mostramos a los pasajeros de Argentina y Chile. (Pedro, Renzo y Luciano)*/
select * from pasajero where nacionalidad in ('Argentino','Chileno');

/*decidi listar vuelos cuyo destino sea Roma y fecha_salida posterior al 2025-05-07*/
select * from vuelo where destino = 'Roma' and fecha_salida > '2025-05-07';