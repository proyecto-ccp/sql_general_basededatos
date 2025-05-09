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
  idzona UUID NOT NULL,
  fecharegistro timestamp(6),
  constraint cliente_idzona foreign key (idzona) references tbl_zonas(id),
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
  fecharealizado timestamp(6) NULL,
  fechaentrega timestamp(6) NOT NULL,
  estadopedido VARCHAR(100) NOT NULL,
  valortotal numeric(10,3),
  idvendedor UUID NULL,
  comentarios VARCHAR(4000) NOT NULL,
  idmoneda SERIAL NOT NULL,
  constraint pedido_idcliente foreign key (idcliente) references tbl_cliente(id),
  constraint pedido_idvendedor foreign key (idvendedor) references tbl_vendedor(id),
  constraint pedido_idmoneda foreign key (idmoneda) references tbl_monedas(id)
);

ALTER TABLE tbl_pedido
ALTER COLUMN idvendedor UUID NULL

ALTER TABLE tbl_pedido
ALTER COLUMN fechaentrega TYPE timestamp with time zone USING fechaentrega AT TIME ZONE 'UTC';

ALTER TABLE tbl_pedido
ALTER COLUMN fecharealizado TYPE timestamp with time zone USING fecharealizado AT TIME ZONE 'UTC';

--drop table tbl_detalle_pedido
CREATE TABLE tbl_detalle_pedido (
  id UUID PRIMARY KEY,
  idpedido UUID NULL,
  idusuario UUID NOT NULL,
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
  direccionorigen VARCHAR(100) NOT NULL,
  direcciondestino VARCHAR(100) NOT NULL,
  tipoentrega VARCHAR(100) NOT NULL,
  metodotransporte VARCHAR(100) NOT NULL,
  fecharegistro timestamp(6) NOT NULL,
  fechaactualizacion timestamp(6)
);

CREATE TABLE tbl_rutaspedidos (
	id SERIAL PRIMARY KEY,
	idruta UUID REFERENCES tbl_ruta(id),
	idpedido UUID REFERENCES tbl_pedido(id),
	estado VARCHAR(20) NOT NULL,
	fecharegistro timestamp(6) NOT NULL,
	fechaactualizacion timestamp(6)
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

CREATE TABLE tbl_planesventas (
	id UUID PRIMARY KEY,
	nombre VARCHAR (200) NOT NULL,
	fechainicio DATE NOT NULL,
	fechafinal DATE NOT NULL,
	fecharegistro timestamp(6) NOT NULL,
	fechaactualizacion timestamp(6)
);

CREATE TABLE tbl_productosplanesventas (
	id SERIAL PRIMARY KEY,
	idplanventas UUID REFERENCES tbl_planesventas(id),
	idproducto INT REFERENCES tbl_productos(id),
	valortotal numeric(10,3) NOT NULL,
	fecharegistro timestamp(6) NOT NULL,
	fechaactualizacion timestamp(6)
);

CREATE TABLE tbl_vendedoresplanesventas (
	id SERIAL PRIMARY KEY,
	idplanventas UUID REFERENCES tbl_planesventas(id),
	idvendedor UUID REFERENCES tbl_vendedor(id),
	fecharegistro timestamp(6) NOT NULL,
	fechaactualizacion timestamp(6)
);

--DROP table tbl_visita
CREATE TABLE tbl_visita(
  id SERIAL PRIMARY KEY,
  idcliente UUID REFERENCES tbl_cliente(id),
  idvendedor UUID REFERENCES tbl_vendedor(id),
  fecha_visita TIMESTAMP WITH TIME ZONE NOT NULL,
  motivo VARCHAR (300) NOT NULL,
  resultado VARCHAR (300) NULL,
  estado_visita VARCHAR (100) NOT NULL
);

--ALTER COLUMN fechaentrega TYPE timestamp with time zone USING fechaentrega AT TIME ZONE 'UTC';
