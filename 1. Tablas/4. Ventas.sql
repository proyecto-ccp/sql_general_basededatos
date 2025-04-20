-- Tabla tipo de documento
CREATE TABLE tbl_tipoDocumento (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
	codigo VARCHAR(50) UNIQUE
);

--drop table tbl_cliente
CREATE TABLE tbl_cliente (
  id UUID PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  apellido VARCHAR(150) NOT NULL,
  tipodocumento VARCHAR(100) NOT NULL,
  documento VARCHAR(100) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  telefono VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  fecharegistro timestamp(6)
);

--drop table tbl_vendedor
CREATE TABLE tbl_vendedor (
  id UUID PRIMARY KEY,
  idTipoDocumento INT REFERENCES tbl_tipoDocumento(id),
  numeroDocumento VARCHAR(20) NOT NULL,
  nombre VARCHAR(150) NOT NULL,
  apellido VARCHAR(150) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  telefono VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  fecharegistro timestamp(6) NOT NULL,
  fechaactualizacion timestamp(6)
);

--drop table tbl_pedido
CREATE TABLE tbl_pedido (
  id UUID PRIMARY KEY,
  idcliente UUID NOT NULL,
  fecharealizado timestamp(6),
  fechaentrega timestamp(6),
  estadopedido VARCHAR(100) NOT NULL,
  valortotal numeric(10,3),
  idvendedor UUID NOT NULL,
  comentarios VARCHAR(max) NOT NULL,
  idmoneda SERIAL NOT NULL,
  constraint pedido_idcliente foreign key (idcliente) references tbl_cliente(id),
  constraint pedido_idvendedor foreign key (idvendedor) references tbl_vendedor(id),
  constraint pedido_idmoneda foreign key (idmoneda) references tbl_monedas(id)
);

--drop table tbl_detalle_pedido
CREATE TABLE tbl_detalle_pedido (
  id UUID PRIMARY KEY,
  idpedido UUID NOT NULL,
  idproducto SERIAL NOT NULL,
  cantidad int,
  preciounitario numeric(10,3),
  valortotal numeric(10,3),
  constraint detalle_pedido_idpedido foreign key (idpedido) references tbl_pedido(id),
  constraint detalle_pedido_idproducto foreign key (idproducto) references tbl_productos(id)
);

--drop table tbl_factura
CREATE TABLE tbl_factura (
  id UUID PRIMARY KEY,
  idpedido UUID NOT NULL,
  fecha timestamp(6),
  valortotal numeric(10,3),
  impuestos numeric(10,3),
  estadopago VARCHAR(100) NOT NULL,
  constraint factura_idpedido foreign key (idpedido) references tbl_pedido(id)
);

--drop table tbl_pago
CREATE TABLE tbl_pago (
  id UUID PRIMARY KEY,
  idpedido UUID NOT NULL,
  fechapago timestamp(6),
  valortotal numeric(10,3),
  metodopago VARCHAR(100) NOT NULL,
  estadopago VARCHAR(100) NOT NULL,
  constraint pago_idpedido foreign key (idpedido) references tbl_pedido(id)
);

--drop table tbl_envio
CREATE TABLE tbl_envio (
  id UUID PRIMARY KEY,
  idpedido UUID NOT NULL,
  fechaenvio timestamp(6),
  estadoenvio VARCHAR(100) NOT NULL,
  constraint envio_idpedido foreign key (idpedido) references tbl_pedido(id)
);

--drop table tbl_ruta
CREATE TABLE tbl_ruta (
  id UUID PRIMARY KEY,
  idpedido UUID NOT NULL,
  direccionorigen VARCHAR(100) NOT NULL,
  direcciondestino VARCHAR(100) NOT NULL,
  tipoentrega VARCHAR(100) NOT NULL,
  metodotransporte VARCHAR(100) NOT NULL,
  fechaentrega timestamp(6),
  constraint ruta_idpedido foreign key (idpedido) references tbl_pedido(id)
);

--drop table tbl_video
CREATE TABLE tbl_video (
  id UUID PRIMARY KEY,
  idcliente UUID NOT NULL,
  idproducto SERIAL NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  urlvideo VARCHAR(150) NOT NULL,
  urlimagen VARCHAR(150),
  estadocarga VARCHAR(100) NOT NULL,
  fechacreacion timestamp(6),
  fechaactualizacion timestamp(6),
  constraint video_idcliente foreign key (idcliente) references tbl_cliente(id),
  constraint video_idproducto foreign key (idproducto) references tbl_productos(id)
);