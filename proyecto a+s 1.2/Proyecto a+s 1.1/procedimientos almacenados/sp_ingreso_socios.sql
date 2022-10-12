-- procedimiento almacenado para ingresar socios a la junta de vecinos --

delimiter %%
create procedure sp_ingreso_socios(
in _id_socios int,
in _nombre_socio varchar(30),
in _apellido_socio varchar(30),
in _rut_socio varchar(10),
in _correo_socio varchar(50),
in _telefono_socio varchar(12),
in _direccion_socio varchar(50))
begin
insert into socios (nombre_socio, apellido_socio, rut_socio, correo_socio, telefono_socio, direccion_socio)
values (_nombre_socio, _apellido_socio, _rut_socio, _correo_socio, _telefono_socio, _direccion_socio)
;
end
%%









