create database junta_vecinos collate utf8mb4_spanish2_ci
charset utf8mb4;
create table socios (
id_socios int primary key auto_increment,
nombre_socio varchar(30),
apellido_socio varchar(30),
rut_socio varchar(10),
correo_socio varchar(50),
telefono_socio varchar(12),
direccion_socio varchar(50)
);

create table pagos (
id_pagos int primary key auto_increment,
fecha_pago datetime,

monto double,
id_socios int,
foreign key (id_socios) references socios(id_socios)
);


create table donaciones (
id_donaciones int primary key auto_increment,
monto_donacion double,
id_socios int,
foreign key (id_socios) references socios (id_socios)
);

