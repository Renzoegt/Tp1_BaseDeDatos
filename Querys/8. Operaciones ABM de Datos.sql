/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos 
Específicamos que schema estamos usando*/
use aerolinea_ez;

/*Actualizar el email de un pasajero elegido mediante su id*/
update pasajero set email = 'pedro_actualizado@gmail.com' where pasajero_id = 1;

/*Actualizar una reserva de un vuelo. Para esta parte intente simular un retraso y un subsecuente descuento en el precio como compensación*/
update vuelo set fecha_salida='2025-5-7 23:00:00' where vuelo_id=3;
update vuelo set fecha_estimada_arribo='2025-5-8 20:00:00' where vuelo_id=3;
update reserva set monto = 3200 where reserva_id = 4;

/*Eliminamos una reserva específica*/
delete from reserva where reserva_id = 3;

/*Eliminar todos los aviones que no estén activos*/
delete from avion where activo = false;

/*Actualización adicional: Nos vamos a Hawaii :D*/
update vuelo set destino='Hawaii' where vuelo_id = 2;

/*Eliminación adicional: borramos bolivianos*/
delete from pasajero where nacionalidad = 'Boliviano';