-- procedimiento almacenado para ver las donaciones --

delimiter %%
create procedure sp_ver_donaciones (
in _rut_socio varchar(10)
)
begin
select donaciones.id_donaciones,
	donaciones.monto_donacion,
    socios.id_socios,
    socios.nombre_socio,
    socios.apellido_socio,
    socios.rut_socio,
    socios.telefono_socio,
    sum(monto_donacion) total_donacion
    from donaciones
    left join socios on
    socios.id_socios = donaciones.id_socios
    where socios.rut_socio = _rut_socio;
    
    end
    
    %%
    
   
    

    