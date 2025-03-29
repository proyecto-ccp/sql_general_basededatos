--drop table tbl_cliente
CREATE TABLE tbl_cliente (
  id UUID PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  apellido VARCHAR(150) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  telefono VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  tipocliente VARCHAR(100) NOT NULL,
  fecharegistro timestamp(6)
);

--drop table tbl_vendedor
CREATE TABLE tbl_vendedor (
  id UUID PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  apellido VARCHAR(150) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  telefono VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  tipocliente VARCHAR(100) NOT NULL,
  fecharegistro timestamp(6)
);

--drop table tbl_moneda
/*CREATE TABLE tbl_moneda (
  id UUID PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  pais VARCHAR(150) NOT NULL
);*/

--drop table tbl_pedido
CREATE TABLE tbl_pedido (
  id UUID PRIMARY KEY,
  idcliente UUID NOT NULL,
  fecharealizado timestamp(6),
  fechaentrega timestamp(6),
  estadopedido VARCHAR(100) NOT NULL,
  valortotal numeric(10,3),
  idvendedor UUID NOT NULL,
  tipoventa VARCHAR(100) NOT NULL,
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