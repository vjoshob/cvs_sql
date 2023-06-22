create database cvsproject;
use cvsproject;

create table usuarioAspirante(
id int primary key not null auto_increment,
correo varchar(256) not null,
contraseña varchar(100) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
perfilProfesional text,
telefono int,
foto blob
);

create table hojaDeVida(
docUsuario int primary key not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
fotoPerfil blob not null,
sexo enum('M','F'),
edad int not null,
ciudad varchar(30) not null,
telefono int,
direccion varchar(100) not null,
correo varchar(50) not null,
recomendacionLaboral blob,
cargo varchar(30) not null,
nombreEmpresa varchar(40) not null,
tiempoLaborado int not null,
fechaInicioLabor date not null,
fechaFinLabor date not null,
certificadoEstudio blob,
tipoFormacion enum('Técnico','Tecnológica','Profesional','Maestría', 'Especialización'),
nombreInstitucion varchar(50) not null,
tituloAprendizaje varchar(50) not null,
estadoFormacion enum('Certificado','En curso','Finalizado sin certificar') not null,
fechaInicioFormacion date not null,
fechaFinFormacion date,
competencia varchar(20) ##preguntar por campos múltilpes
);

create table usuarioEmpresa(
id int not null primary key auto_increment,
correoEmpresarial varchar(256) not null,
contraseña varchar(50) not null,
nitEmpresa varchar(20) not null,
nombreEmpresa varchar(20) not null,
ceoEmpresa varchar(50) not null,
ownerEmpresa varchar(50) not null,
logoEmpresa blob,
descripcionEmpresa text,
etiqueta varchar(20) # preguntar por campos múltiples
);


/*set @categoria = '';
delimiter //
create function categoriaCustom(cate varchar(10)) returns varchar(10)
begin
	set @categoria = cate;
    return @categoria;
end //
delimiter ;

create table bandeja(
categoriaBandeja enum('principal','papelera','archivados','favoritos',@categoria));
*/

create table mensaje(
messageContent text);












