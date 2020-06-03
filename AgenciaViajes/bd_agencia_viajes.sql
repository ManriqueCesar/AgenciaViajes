create database bd_agencia_viajes;
use bd_agencia_viajes;
drop database bd_agencia_viajes;

/* ACTUALIZACION: SE CAMBIARON A VARCHAR LA MAYORIA DE ATRIBUTOS, INCLUYENDO LOS QUE DEBERIAN IR 
"INT", ESTO ES A QUE NO PUEDO CAMBIAR EL ARCHIVO INTERNO DEL JASPER DONDE TODO ESTÁ 
ESPECIFICADO COMO STRING
*/

drop table if exists camion;
create table camion (
Matricula_cli varchar(30),
ID_cli int auto_increment primary key,
Año_cli varchar(10),
Marca_cli varchar(20),
Modelo_cli varchar(20), 
Capacidad_cli int
);



drop table if exists departamento;
create table departamento(
id_departamento int primary key,
departamento varchar(30)
);


drop table if exists conductor;
create table conductor (
ID_cli int auto_increment primary key , 
RFC_cli varchar(15) , /*Tuve que cambiarlo nuevamente a RFC por conflictos con el Jasper */ 
Nombre_cli varchar(10),
Domicilio_cli varchar(20),
Telefono_cli varchar(20),
FechaNacimiento_cli date, 
Matricula_cli varchar(30) ,
IDcamion_cli int,
constraint `IDcamion_cli` foreign key (`IDcamion_cli`)   references `camion`(`ID_cli`)
);

drop table if exists boleto;
create table boleto (
ID_cli int auto_increment primary key,
NombrePasajero_cli varchar(45),
Costo_cli varchar(45),
NA_cli varchar(45),
Origen_cli int,
Destino_cli int,
Horario_cli int,
Linea_cli varchar(20),
Fecha_cli varchar(20),
constraint `Destino_cli` foreign key (`ID_cli`)   references `viajes`(`ID_cli`)
);
insert into boleto values (1,'a','b','c',1,2,10,'g','2020-02-02');

SELECT * FROM boleto;

drop table if exists viajes;
create table viajes (
ID_cli int auto_increment primary key,
Orig_cli varchar(25),
Dest_cli varchar(25),
Salida_cli varchar(20),
CamionAsignado_cli varchar(30), /*Matricula*/
Matricula_cli varchar(20)
);

select * from viajes;

select * from conductor;
select matricula_cli from camion where idCamion_cli = Idcamion_cli;

insert into departamento values       
	  (3926,"LIMA"), 
      (2534,"AMAZONAS"), 
      (2625,"ANCASH"), 
      (2812,"APURIMAC"), 
      (2900,"AREQUIPA"), 
      (3020,"AYACUCHO"), 
      (3143,"CAJAMARCA"), 
      (3285,"CALLAO"), 
      (3292,"CUSCO"), 
      (3414,"HUANCAVELICA"), 
      (3518,"HUANUCO"), 
      (3606,"ICA"), 
      (3655,"JUNIN"), 
      (3788,"LA LIBERTAD"), 
      (3884,"LAMBAYEQUE"), 
      (4108,"LORETO"), 
      (4165,"MADRE DE DIOS"), 
      (4180,"MOQUEGUA"), 
      (4204,"PASCO"), 
      (4236,"PIURA"), 
      (4309,"PUNO"), 
      (4431,"SAN MARTIN"), 
      (4519,"TACNA"), 
      (4551,"TUMBES"), 
      (4567,"UCAYALI");
