--drop table tbl_usuario
CREATE TABLE tbl_usuario (
  id UUID PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  contrasena VARCHAR(100) NOT NULL,
  nombres VARCHAR(150) NOT NULL,
  apellidos VARCHAR(150) NOT NULL,
  correo VARCHAR(100) NOT NULL,
  telefono VARCHAR(100) NOT NULL
);

--drop table tbl_auditoria
CREATE TABLE tbl_auditoria (
  id UUID PRIMARY KEY,
  idusuario UUID NOT NULL,
  accion VARCHAR(100) NOT NULL,
  tablaafectada VARCHAR(100) NOT NULL,
  registroafectado UUID NOT NULL,
  fecha timestamp(6),
  bodega UUID NOT NULL,
  constraint auditoria_idusuario foreign key (idusuario) references tbl_usuario(id)
);

--drop table tbl_rol
CREATE TABLE tbl_rol (
  id UUID PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(200) NOT NULL
);

--drop table tbl_usuario_rol
CREATE TABLE tbl_usuario_rol (
  id UUID PRIMARY KEY,
  idusuario UUID NOT NULL,
  idrol UUID NOT NULL,
  constraint usuario_rol_idusuario foreign key (idusuario) references tbl_usuario(id),
  constraint usuario_rol_idrol foreign key (idrol) references tbl_rol(id)
);

--drop table tbl_permiso
CREATE TABLE tbl_permiso (
  id UUID PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(200) NOT NULL
);

--drop table tbl_rol_permiso
CREATE TABLE tbl_rol_permiso (
  id UUID PRIMARY KEY,
  idpermiso UUID NOT NULL,
  idrol UUID NOT NULL,
  constraint usuario_rol_idusuario foreign key (idpermiso) references tbl_permiso(id),
  constraint usuario_rol_idrol foreign key (idrol) references tbl_rol(id)
);

CREATE TABLE tbl_parametros 
(
	id VARCHAR(250) PRIMARY KEY,
	valor VARCHAR(250) NOT NULL,
	descripcion VARCHAR(500) NOT NULL
);