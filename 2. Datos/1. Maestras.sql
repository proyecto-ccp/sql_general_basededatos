INSERT INTO tbl_idiomas (nombre) VALUES
('Español'),
('Inglés'),
('Francés'),
('Alemán'),
('Italiano'),
('Portugués'),
('Chino'),
('Japonés'),
('Ruso'),
('Árabe');

INSERT INTO tbl_monedas (nombre, acronimo) VALUES
('Dólar estadounidense', 'USD'),
('Euro', 'EUR'),
('Yen japonés', 'JPY'),
('Libra esterlina', 'GBP'),
('Dólar canadiense', 'CAD'),
('Franco suizo', 'CHF'),
('Yuan chino', 'CNY'),
('Peso mexicano', 'MXN'),
('Real brasileño', 'BRL'),
('Rublo ruso', 'RUB'),
('Peso colombiano', 'COL'),
('Peso argentino', 'ARG');

INSERT INTO tbl_paises (nombre, idIdioma, idMoneda) VALUES
('Colombia', 1, 11),  
('Argentina', 1, 12),          
('Brasil', 6, 9),          
('Estados Unidos', 2, 1), 
('México', 1, 8);

INSERT INTO tbl_regiones (idPais, nombre) VALUES
(1, 'Amazonas'),
(1, 'Antioquia'),
(1, 'Arauca'),
(1, 'Atlántico'),
(1, 'Bogotá D.C.'),
(1, 'Bolívar'),
(1, 'Boyacá'),
(1, 'Caldas'),
(1, 'Caquetá'),
(1, 'Casanare'),
(1, 'Cauca'),
(1, 'Cesar'),
(1, 'Chocó'),
(1, 'Córdoba'),
(1, 'Cundinamarca'),
(1, 'Guainía'),
(1, 'Guaviare'),
(1, 'Huila'),
(1, 'La Guajira'),
(1, 'Magdalena'),
(1, 'Meta'),
(1, 'Nariño'),
(1, 'Norte de Santander'),
(1, 'Putumayo'),
(1, 'Quindío'),
(1, 'Risaralda'),
(1, 'San Andrés y Providencia'),
(1, 'Santander'),
(1, 'Sucre'),
(1, 'Tolima'),
(1, 'Valle del Cauca'),
(1, 'Vaupés'),
(1, 'Vichada');

INSERT INTO tbl_ciudades (id, idRegion, poblacion, nombre) VALUES
('3e075ba9-c330-4ff1-8825-afb0076989e0', 5, 7181469, 'Bogotá D.C.'),
('ebc546ea-a179-4b0b-a833-178a53003ce6', 2, 2569528, 'Medellín'),   
('151f4de7-3aca-4c5a-91cf-443901132e57', 31, 2227642, 'Cali'),      
('a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', 4, 1274250, 'Barranquilla'),
(gen_random_uuid(), 6, 914552, 'Cartagena');   


-- Zonas para Bogotá D.C.
INSERT INTO tbl_zonas (id, idciudad, nombre, limites) VALUES
('11e86372-1b67-4d4b-b234-53f716dab601', '3e075ba9-c330-4ff1-8825-afb0076989e0', 'Zona Norte', 'Del río Bogotá hasta la calle 170'),
('22e86372-2c89-4e0b-a324-85b716dab602', '3e075ba9-c330-4ff1-8825-afb0076989e0', 'Zona Centro', 'Entre la calle 26 y la calle 72');

-- Zonas para Medellín
INSERT INTO tbl_zonas (id, idciudad, nombre, limites) VALUES
('33e86372-3f91-4c1a-b456-93c716dab603', 'ebc546ea-a179-4b0b-a833-178a53003ce6', 'Zona Nororiental', 'Desde el barrio Popular hasta Santo Domingo'),
('44e86372-4a92-4d7b-c789-24d716dab604', 'ebc546ea-a179-4b0b-a833-178a53003ce6', 'Zona Centro', 'Entre San Antonio y Prado Centro');

-- Zonas para Cali
INSERT INTO tbl_zonas (id, idciudad, nombre, limites) VALUES
('55e86372-5b93-4e8c-d890-63e716dab605', '151f4de7-3aca-4c5a-91cf-443901132e57', 'Zona Sur', 'Desde Ciudad Jardín hasta Pance'),
('66e86372-6c94-4f9d-e901-12e716dab606', '151f4de7-3aca-4c5a-91cf-443901132e57', 'Zona Oeste', 'Entre el río Cali y los farallones');

-- Zonas para Barranquilla
INSERT INTO tbl_zonas (id, idciudad, nombre, limites) VALUES
('77e86372-7d95-5a0e-f012-75e716dab607', 'a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', 'Zona Metropolitana', 'Área que conecta con Soledad y Malambo'),
('88e86372-8e96-6b1f-0123-46e716dab608', 'a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', 'Zona Centro Histórico', 'Desde el Paseo Bolívar hasta Barrio Abajo');


INSERT INTO tbl_medidas (nombre, codigo) VALUES
('Unidad', 'UND'),
('Metro', 'M'),
('Kilogramo', 'KG'),
('Litro', 'L'),
('Centímetro', 'CM'),
('Milímetro', 'MM'),
('Gramo', 'G'),
('Mililitro', 'ML'),
('Pulgada', 'IN'),
('Pie', 'FT');

INSERT INTO tbl_categoria (nombre, codigo) VALUES
('Electrónica', 'ELEC'),
('Ropa', 'ROPA'),
('Calzado', 'CALZ'),
('Hogar', 'HOGR'),
('Muebles', 'MUEB'),
('Deportes', 'DEPO'),
('Libros', 'LIB'),
('Juguetes', 'JUG'),
('Alimentos', 'ALIM'),
('Herramientas', 'HERR');

INSERT INTO tbl_marca (nombre, codigo) VALUES
('Samsung', 'SAMS'),
('Nike', 'NIKE'),
('Adidas', 'ADID'),
('Sony', 'SONY'),
('LG', 'LG'),
('Apple', 'APPL'),
('HP', 'HP'),
('Dell', 'DELL'),
('Bosch', 'BOSC'),
('Makita', 'MAKI'),
('Stanley', 'STAN'),
('Lego', 'LEGO'),
('Mattel', 'MATT'),
('Hasbro', 'HASB'),
('Nestlé', 'NEST'),
('Coca-Cola', 'COCA'),
('Pepsi', 'PEPS'),
('Zara', 'ZARA'),
('H&M', 'HM'),
('Levis', 'LEVI');

INSERT INTO tbl_color (nombre, codigo) VALUES
('Rojo', 'ROJO'),
('Azul', 'AZUL'),
('Amarillo', 'AMAR'),
('Verde', 'VERD'),
('Naranja', 'NARA'),
('Morado', 'MORA'),
('Marrón', 'MARR'),
('Gris', 'GRIS'),
('Blanco', 'BLAN'),
('Negro', 'NEGR'),
('Cian', 'CIAN'),
('Magenta', 'MAGN'),
('Lima', 'LIMA'),
('Oliva', 'OLIV'),
('Turquesa', 'TURQ'),
('Violeta', 'VIOl'),
('Salmón', 'SALM'),
('Beige', 'BEIG'),
('Dorado', 'DORA'),
('Plateado', 'PLAT');

INSERT INTO tbl_modelo (nombre, codigo) VALUES
('Galaxy S23', 'GS23'),
('iPhone 14', 'IP14'),
('Air Max 90', 'AM90'),
('Ultraboost 22', 'UB22'),
('Bravia XR', 'BXR'),
('OLED C2', 'OLC2'),
('Pavilion 15', 'PAV15'),
('XPS 13', 'XPS13'),
('GSR 18V-55', 'GSR18'),
('RT0700C', 'RT0700'),
('STHT77645', 'STHT77'),
('City', 'CITY'),
('Duplo', 'DUPL'),
('Monopoly', 'MONO'),
('Classic', 'CLAS'),
('Sprite', 'SPRT'),
('Zero', 'ZERO'),
('Basic', 'BASI'),
('Premium', 'PREM'),
('501', '501'),
('Air Force 1', 'AF1'),
('Stan Smith', 'STSM'),
('Alphafly', 'ALPH'),
('Adizero', 'ADIZ'),
('KD15', 'KD15'),
('Lebron 20', 'LB20'),
('Echo Dot', 'ECHOD'),
('Fire TV Stick', 'FTVS'),
('Kindle Paperwhite', 'KPW'),
('Roomba 692', 'RM692');

INSERT INTO tbl_materiales (nombre, codigo) VALUES
('Acero', 'ACER'),
('Aluminio', 'ALUM'),
('Plástico', 'PLAS'),
('Madera', 'MADE'),
('Cuero', 'CUER'),
('Tela', 'TELA'),
('Vidrio', 'VIDR'),
('Cerámica', 'CERA'),
('Oro', 'ORO'),
('Plata', 'PLAT'),
('Cobre', 'COBR'),
('Bronce', 'BRON'),
('Titanio', 'TITAN'),
('Carbono', 'CARBO'),
('Lana', 'LANA'),
('Algodón', 'ALGO'),
('Seda', 'SEDA'),
('Nylon', 'NYLO'),
('Poliéster', 'POLI'),
('Caucho', 'CAUC'),
('Espuma', 'ESPU'),
('Cartón', 'CART'),
('Papel', 'PAPE'),
('Ladrillo', 'LADR'),
('Cemento', 'CEME'),
('Hormigón', 'HORM'),
('Mármol', 'MARM'),
('Granito', 'GRAN'),
('Piedra', 'PIED'),
('Yeso', 'YESO');

INSERT INTO tbl_tipoDocumento (nombre, codigo) VALUES
('Cedula', 'CC'),
('Cedula de extranjeria', 'CE'),
('Número de identificación tributaria', 'NIT')

INSERT INTO tbl_bodegas (idciudad, nombre, fecharegistro) VALUES
('3e075ba9-c330-4ff1-8825-afb0076989e0', 'BODEGA UNO', NOW()),
('3e075ba9-c330-4ff1-8825-afb0076989e0', 'BODEGA DOS', NOW()),
('3e075ba9-c330-4ff1-8825-afb0076989e0', 'BODEGA TRES', NOW()),
('3e075ba9-c330-4ff1-8825-afb0076989e0', 'BODEGA CUATRO', NOW()),
('3e075ba9-c330-4ff1-8825-afb0076989e0', 'BODEGA CINCO', NOW()),
('ebc546ea-a179-4b0b-a833-178a53003ce6', 'BODEGA UNO', NOW()),
('ebc546ea-a179-4b0b-a833-178a53003ce6', 'BODEGA DOS', NOW()),
('ebc546ea-a179-4b0b-a833-178a53003ce6', 'BODEGA TRES', NOW()),
('ebc546ea-a179-4b0b-a833-178a53003ce6', 'BODEGA CUATRO', NOW()),
('ebc546ea-a179-4b0b-a833-178a53003ce6', 'BODEGA CINCO', NOW()),
('151f4de7-3aca-4c5a-91cf-443901132e57', 'BODEGA UNO', NOW()),
('151f4de7-3aca-4c5a-91cf-443901132e57', 'BODEGA DOS', NOW()),
('151f4de7-3aca-4c5a-91cf-443901132e57', 'BODEGA TRES', NOW()),
('151f4de7-3aca-4c5a-91cf-443901132e57', 'BODEGA CUATRO', NOW()),
('151f4de7-3aca-4c5a-91cf-443901132e57', 'BODEGA CINCO', NOW()),
('a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', 'BODEGA UNO', NOW()),
('a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', 'BODEGA DOS', NOW()),
('a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', 'BODEGA TRES', NOW()),
('a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', 'BODEGA CUATRO', NOW()),
('a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', 'BODEGA CINCO', NOW()),
('ff111b9c-bf4a-41d7-a7b9-74d7c337946c', 'BODEGA UNO', NOW()),
('ff111b9c-bf4a-41d7-a7b9-74d7c337946c', 'BODEGA DOS', NOW()),
('ff111b9c-bf4a-41d7-a7b9-74d7c337946c', 'BODEGA TRES', NOW()),
('ff111b9c-bf4a-41d7-a7b9-74d7c337946c', 'BODEGA CUATRO', NOW()),
('ff111b9c-bf4a-41d7-a7b9-74d7c337946c', 'BODEGA CINCO', NOW())

INSERT INTO tbl_productosbodega (idbodega, idproducto, pasillo, estante, nivel, fecharegistro)
SELECT 1, id, 2, 3, 4, NOW() FROM tbl_productos