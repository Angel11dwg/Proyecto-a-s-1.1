-- Procedimiento para consultar pagos de los socios --

delimiter %%
create procedure sp_consulta_pagos (
in _rut_socio varchar (10)
)
begin 
select 
pagos.fecha_pago,
socios.nombre_socio,
socios.apellido_socio,
socios.rut_socio,
socios.id_socios,
sum(pagos.monto) pago_total             
from pagos
left join socios on
pagos.id_socios = socios.id_socios
where socios.rut_socio = _rut_socio
group by id_socios;

end

%%

