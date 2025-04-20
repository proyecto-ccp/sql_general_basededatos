CREATE TABLE tbl_inventario (
  id UUID PRIMARY KEY,
  idproducto INT REFERENCES tbl_productos(id),
  cantidad_stock INT NOT NULL,
  fecharegistro timestamp(6) NOT NULL,
  fechaactualizacion timestamp(6)
);