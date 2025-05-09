CREATE TABLE tbl_inventario (
  id UUID PRIMARY KEY,
  idproducto INT REFERENCES tbl_productos(id),
  cantidad_stock INT NOT NULL,
  fecharegistro timestamp(6) NOT NULL,
  fechaactualizacion timestamp(6)
);


CREATE TABLE tbl_bodegas (
  id SERIAL PRIMARY KEY,
  idciudad UUID REFERENCES tbl_ciudades(id),
  nombre VARCHAR(20) NOT NULL,
  fecharegistro timestamp(6) NOT NULL,
  fechaactualizacion timestamp(6)
);


CREATE TABLE tbl_productosbodega (
  id SERIAL PRIMARY KEY,
  idbodega INT REFERENCES tbl_bodegas(id),
  idproducto INT REFERENCES tbl_productos(id),
  pasillo INT NOT NULL,
  estante INT NOT NULL,
  nivel INT NOT NULL,
  fecharegistro timestamp(6) NOT NULL,
  fechaactualizacion timestamp(6)
);
