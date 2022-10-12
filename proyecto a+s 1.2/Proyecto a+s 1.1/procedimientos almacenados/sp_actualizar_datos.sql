-- Procedimiento para actualizar datos de los socios --

delimiter %%

create procedure sp_actualizar_datos (
in _id_socios int,
in _correo_socio varchar(50),
in _telefono_socio varchar(12),
in _direccion_socio varchar(50)
)
begin
update socios set correo_socio = _correo_socio, telefono_socio = _telefono_socio, direccion_socio = _direccion_socio
where socios.id_socios = _id_socios;
				
end
%%









