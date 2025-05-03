-- Tabla idiomas
CREATE TABLE tbl_idiomas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Tabla monedas
CREATE TABLE tbl_monedas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    acronimo VARCHAR(10)
);

-- Tabla países
CREATE TABLE tbl_paises (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    idIdioma INT REFERENCES tbl_idiomas(id),
    idMoneda INT REFERENCES tbl_monedas(id)
);

-- Tabla regiones
CREATE TABLE tbl_regiones (
    id SERIAL PRIMARY KEY,
    idPais INT REFERENCES tbl_paises(id),
    nombre VARCHAR(100)
);

-- Tabla ciudades
CREATE TABLE tbl_ciudades (
    id UUID PRIMARY KEY,
    idRegion INT REFERENCES tbl_regiones(id),
    poblacion INT,
    nombre VARCHAR(100)
);

-- Tabla zonas
CREATE TABLE tbl_zonas (
    id UUID PRIMARY KEY,
    idciudad UUID REFERENCES tbl_ciudades(id),
    nombre VARCHAR(100),
    limites VARCHAR(400)
);

-- Tabla medidas
CREATE TABLE tbl_medidas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    codigo VARCHAR(50) UNIQUE
);

-- Tabla categorías
CREATE TABLE tbl_categoria (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    codigo VARCHAR(50) UNIQUE
);

-- Tabla marcas
CREATE TABLE tbl_marca (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    codigo VARCHAR(50) UNIQUE
);

-- Tabla colores
CREATE TABLE tbl_color (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    codigo VARCHAR(50) UNIQUE
);

-- Tabla modelos
CREATE TABLE tbl_modelo (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    codigo VARCHAR(50) UNIQUE
);

-- Tabla materiales
CREATE TABLE tbl_materiales (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    codigo VARCHAR(50) UNIQUE
);

-- Tabla proveedores
CREATE TABLE tbl_proveedores (
    id UUID PRIMARY KEY,
    nombre VARCHAR(255) UNIQUE,
    direccion VARCHAR(255),
    idCiudad UUID REFERENCES tbl_ciudades(id),
    telefono VARCHAR(20),
    correo VARCHAR(50),
	idTipoDocumento INT REFERENCES tbl_tipoDocumento(id),
	numeroDocumento VARCHAR(20) NOT NULL,
	fecharegistro timestamp(6) NOT NULL,
	fechaactualizacion timestamp(6)
);

-- Tabla productos
CREATE TABLE tbl_productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE,
    descripcion VARCHAR(255),
    idProveedor UUID REFERENCES tbl_proveedores(id),
    precioUnitario DECIMAL,
    idMedida INT REFERENCES tbl_medidas(id),
    idCategoria INT REFERENCES tbl_categoria(id),
    idMarca INT REFERENCES tbl_marca(id),
    idColor INT REFERENCES tbl_color(id),
    idModelo INT REFERENCES tbl_modelo(id),
    idMaterial INT REFERENCES tbl_materiales(id),
    urlFoto1 VARCHAR(255),
    urlFoto2 VARCHAR(255)
);

-- Tabla SKU
CREATE TABLE tbl_SKU (
    id UUID PRIMARY KEY,
    codigo VARCHAR(50) UNIQUE,
    idProducto INT REFERENCES tbl_productos(id)
);

-- Tabla condiciones comerciales
CREATE TABLE tbl_condicionesComerciales (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(255)
);

-- Tabla condiciones legales
CREATE TABLE tbl_condicionesLegales (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(255)
);

-- Tabla condiciones tributarias
CREATE TABLE tbl_condicionesTributarias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(255)
);

-- Tabla condiciones producto
CREATE TABLE tbl_condicionesProducto (
    id SERIAL PRIMARY KEY,
    idProducto INT REFERENCES tbl_productos(id),
    idCondicionComercial INT REFERENCES tbl_condicionesComerciales(id),
    idCondicionLegal INT REFERENCES tbl_condicionesLegales(id),
    idCondicionTributaria INT REFERENCES tbl_condicionesTributarias(id),
    fechaInicio DATE,
    fechaFin DATE,
    observaciones VARCHAR(255)
);

-- Vista vw_datosubicacion
CREATE VIEW vw_datosubicacion
AS
SELECT P.id idpais,
P.nombre nombrepais, 
P.ididioma,
I.nombre idioma,
P.idmoneda,
M.nombre moneda,
M.acronimo acronimomoneda,
R.id idregion,
R.nombre region,
C.id idciudad,
C.nombre ciudad,
C.poblacion
FROM tbl_paises p
	INNER JOIN tbl_regiones R ON (P.id = R.idpais) 
	INNER JOIN tbl_idiomas I ON (P.ididioma = I.id)
	INNER JOIN tbl_monedas M ON (M.id = P.idmoneda)
	INNER JOIN tbl_ciudades C ON (C.idregion = R.id)
	
-- Vista vw_datosubicacionzona
CREATE VIEW vw_datosubicacionzona
AS
SELECT P.id idpais,
P.nombre nombrepais, 
P.ididioma,
I.nombre idioma,
P.idmoneda,
M.nombre moneda,
M.acronimo acronimomoneda,
R.id idregion,
R.nombre region,
C.id idciudad,
C.nombre ciudad,
Z.id idzona,
Z.nombre zona
FROM tbl_paises p
	INNER JOIN tbl_regiones R ON (P.id = R.idpais) 
	INNER JOIN tbl_idiomas I ON (P.ididioma = I.id)
	INNER JOIN tbl_monedas M ON (M.id = P.idmoneda)
	INNER JOIN tbl_ciudades C ON (C.idregion = R.id)  
	INNER JOIN tbl_zonas Z ON (Z.idciudad = C.id)	