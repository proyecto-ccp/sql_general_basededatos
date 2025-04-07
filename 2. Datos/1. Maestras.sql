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