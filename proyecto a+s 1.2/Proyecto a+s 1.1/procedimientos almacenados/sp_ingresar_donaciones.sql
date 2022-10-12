-- Ingresar donaciones de los socios a la junta de vecinos -- 

delimiter %%

create procedure sp_ingresar_donaciones (
in _id_donaciones int,
in _monto_donacion double,
in _id_socios int
)

begin
insert into donaciones (id_donaciones, monto_donacion, id_socios)
values (_id_donaciones, _monto_donacion, _id_socios);
end
%%



