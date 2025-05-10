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

CREATE OR REPLACE FUNCTION fun_productoenbodega(p_idproducto INT)
returns table(idciudad UUID,
              ciudad VARCHAR,
              idproducto INT,
              producto VARCHAR,
              idbodega INT,
              bodega VARCHAR,
              pasillo INT,
              estante INT,
              nivel INT
              )
as $$
SELECT C.id idciudad, 
C.nombre ciudad, 
P.id idproducto, 
P.nombre producto, 
B.id idbodega, 
B.nombre bodega, 
PB.pasillo, 
PB.estante, 
PB.nivel
FROM tbl_productosbodega PB
INNER JOIN tbl_productos P ON (P.id = PB.idproducto)
INNER JOIN tbl_bodegas B ON (B.id = PB.idbodega)
INNER JOIN tbl_ciudades C ON (C.id = B.idciudad )
WHERE P.id =  p_idproducto
$$ language sql;