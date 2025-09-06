/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos 
Específicamos que schema estamos usando*/
use aerolinea_ez;

/*insertamos un registro en la tabla pasajero*/
insert into pasajero(nombre, apellido, nacionalidad, email, tipo_documento, nro_documento) 
values ('Pedro', 'Gomez', 'Argentino', 'pgoy@gmail.com', 'dni', 11233233);

/*insertamos un registro en la tabla vuelo*/
insert into vuelo(avion_id, origen, destino, fecha_salida, fecha_estimada_arribo, combustible, capacidad) 
values (2, 'Kuala Lumpur', 'Posadas', '2025-5-7 20:00:00','2025-5-8 17:00:00', 2000, 575);

/*insertamos un registro en la tabla reserva*/
insert into reserva(pasajero_id, vuelo_id, fecha_reserva, monto, forma_pago) 
values (1,1,'2025-4-30 18:00:00',3000, 'transferencia bancaria');

/*insertamos un registro en la tabla avion*/
insert into avion(vuelo_id ,marca, modelo, anio_contratacion)
values(1,'AirBus', 'A380-800', 2020);

/*seccion 2*/

/*insertamos varios registros en la tabla pasajero*/
insert into pasajero(nombre, apellido, nacionalidad, email, tipo_documento, nro_documento) 
values ('Renzo', 'Gomez', 'Argentino', 'zamn@gmail.com', 'dni', 99880099),
('Ramiro', 'Rivero', 'Boliviano', 'ramitabrodi@gmail.com', 'dni', 46237590),
('Luciano', 'Steinmann', 'Chileno', 'lucho@gmail.com', 'dni', 11111111);

/*insertamos varios registros en la tabla vuelo*/
insert into vuelo(avion_id, origen, destino, fecha_salida, fecha_estimada_arribo, combustible, capacidad) 
values (2, 'Posadas', 'Lima', '2025-5-8 22:00:00','2025-5-9 5:00:00', 2000, 575),
(3, 'Londres', 'Roma', '2025-5-7 20:00:00','2025-5-8 17:00:00', 2000, 451),
(4, 'Roma', 'Nueva Delhi', '2025-5-8 22:00:00','2025-5-9 12:00:00', 2000, 451);

/*insertamos varios registros en la tabla reserva*/
insert into reserva(pasajero_id, vuelo_id, fecha_reserva, monto, forma_pago) 
values (1,2,'2025-5-2 18:00:00',3000, 'transferencia bancaria'),
(2,2,'2025-4-30 18:00:00',3300, 'efectivo'),
(3,3,'2025-4-30 18:00:00',3500, 'tarjeta de credito');

/*insertamos varios registros en la tabla avion*/
insert into avion(vuelo_id ,marca, modelo, anio_contratacion)
values(2,'AirBus', 'A380-800', 2021),
(3,'Boeing', '777-300', 2016),
(4,'Boeing', '777-300', 2022);