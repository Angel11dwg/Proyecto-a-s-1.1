-- Procedimiento para ingresar los pagos de los socios--

delimiter %%
create procedure sp_ingreso_pagos (
in _id_pagos int,
in _fecha_pago datetime,
in _monto double,
in _id_socios int
)
begin
insert into pagos (id_pagos, fecha_pago, monto, id_socios)
values (_id_pagos, _fecha_pago, _monto, _id_socios)
;
end
%%










