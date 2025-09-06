/*Trabajo Práctico de Renzo Exequiel Gómez Terrussi para la cátedra de Bases de Datos 
Específicamos que schema estamos usando*/
use aerolinea_ez;

/*Los pasajeros se crearon todos al mismo tiempo, ya que se corrió el script completo para verificar su funcionamiento de 0. 
Por ende usare como criterio adicional la nacionalidad*/
select * from pasajero order by fecha_registro desc, nacionalidad asc;

/*Listar las reservas ordenadas por monto descendente y, en caso de empate, por forma_pago ascendente*/
select * from reserva order by monto desc, forma_pago asc;

/*Listar los vuelos ordenados primero por capacidad ascendente y luego por fecha_salida descendente*/
select * from vuelo order by capacidad asc, fecha_salida desc;