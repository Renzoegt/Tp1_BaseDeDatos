/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos
Creamos un usuario con permisos de solo lectura sobre toda la base
(No encontré los comandos en w3School para esto asi que use google, stack overflow y chatGPT para aprender que hacia cada uno)*/
create user 'usuario_aerolinea'@'localhost' identified by 'Dostoyevski';
grant select on aerolinea_ez.* to 'usuario_aerolinea'@'localhost';

/*Creamos el rol rol_reserva con permisos de lectura, creación y edición sobre pasajero y reserva*/
create role 'rol_reserva';
grant select, insert, update on aerolinea_ez.pasajero to 'rol_reserva';
grant select, insert, update on aerolinea_ez.reserva to 'rol_reserva';

/*Creamos un usuario adicional y le asignamos el rol rol_reserva*/
create user 'amiwi'@'localhost' identified by 'friend';
grant 'rol_reserva' to 'amiwi'@'localhost';

/*Modificamos el rol para que también pueda eliminar registros*/
grant delete on aerolinea_ez.pasajero to 'rol_reserva';
grant delete on aerolinea_ez.reserva to 'rol_reserva';

/*Revocamos el permiso de eliminación del rol rol_reserva*/
revoke delete on aerolinea_ez.pasajero from 'rol_reserva';
revoke delete on aerolinea_ez.reserva from 'rol_reserva';

/*Asignamos el rol rol_reserva al usuario usuario_aerolinea*/
grant 'rol_reserva' to 'usuario_aerolinea'@'localhost';

/*Cambiamos la contraseña de usuario_aerolinea*/
alter user 'usuario_aerolinea'@'localhost' identified by 'AlberCamus';

/*Eliminamos el usuario usuario_aerolinea*/
drop user 'usuario_aerolinea'@'localhost';

/*Eliminamos el rol rol_reserva*/
drop role 'rol_reserva';

/*Creamos un usuario admin con todos los permisos*/
create user 'usuario_admin'@'localhost' identified by 'Ubermensch';
grant all privileges on aerolinea_ez.* to 'usuario_admin'@'localhost' with grant option;