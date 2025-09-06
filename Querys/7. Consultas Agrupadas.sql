/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos 
Específicamos que schema estamos usando*/
use aerolinea_ez;

/*Calcular el total de reservas por pasajero*/
select pasajero_id, count(*) as total_reservas from reserva group by pasajero_id;

/*Calcular el total de ventas por forma de pago.*/
select forma_pago, sum(monto) as total_ventas from reserva group by forma_pago;

/*Calcular la cantidad de vuelos que parten de cada aeropuerto de origen*/
select origen, count(*) as total_vuelos from vuelo group by origen;

/*Promedio de monto de reservas por vuelo.*/
select vuelo_id, avg(monto) as promedio_reservas from reserva group by vuelo_id;