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
(gen_random_uuid(), 5, 7181469, 'Bogotá D.C.'),
(gen_random_uuid(), 2, 2569528, 'Medellín'),   
(gen_random_uuid(), 31, 2227642, 'Cali'),      
(gen_random_uuid(), 4, 1274250, 'Barranquilla'),
(gen_random_uuid(), 6, 914552, 'Cartagena');   