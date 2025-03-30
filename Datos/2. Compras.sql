--//-----------------------tbl_proveedores------------------------//--
INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, sitioWeb, idTributario, idPostal, descripcion)
VALUES
('550e8400-e29b-41d4-a716-446655440000', 'Proveedor A', 'Av. Siempre Viva 123', 'c7b6224d-c903-46b2-a16f-72489e39c96a', '+123456789', 'contacto@proveedora.com', 'https://www.proveedora.com', 'ABC123456', 'CP1000', 'Proveedor de insumos industriales');

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, sitioWeb, idTributario, idPostal, descripcion)
VALUES
('660e8400-e29b-41d4-a716-446655440002', 'Proveedor B', 'Calle Falsa 456', 'f6023028-4a73-4db4-acec-3ad348481cac', '+987654321', 'ventas@proveedorb.com', 'https://www.proveedorb.com', 'XYZ654321', 'CP2000', 'Distribuidor mayorista de tecnología');

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, sitioWeb, idTributario, idPostal, descripcion)
VALUES
('770e8400-e29b-41d4-a716-446655440004', 'Proveedor C', 'Blvd. Central 789', '01e27e6b-fe5d-460d-87da-d7898d5a1de0', '+1122334455', 'info@proveedorc.com', 'https://www.proveedorc.com', 'LMN789012', 'CP3000', 'Empresa especializada en logística y transporte');


INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, sitioWeb, idTributario, idPostal, descripcion)
VALUES
('880e8400-e29b-41d4-a716-446655440006', 'Proveedor D', 'Avenida Los Pinos 321', 'bcda62fa-f9d1-43a1-b2ec-654f900c74c1', '+5566778899', 'soporte@proveedord.com', 'https://www.proveedord.com', 'TRB456789', 'CP4000', 'Proveedor de equipos médicos');

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, sitioWeb, idTributario, idPostal, descripcion)
VALUES
('990e8400-e29b-41d4-a716-446655440008', 'Proveedor E', 'Calle del Sol 654', '4aaa130c-4f3e-4e3a-be57-3d8b3c0051b2', '+6677889900', 'ventas@proveedore.com', 'https://www.proveedore.com', 'GHI567890', 'CP5000', 'Distribuidor de productos electrónicos');

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, sitioWeb, idTributario, idPostal, descripcion)
VALUES
('aa0e8400-e29b-41d4-a716-446655440010', 'Proveedor F', 'Ruta 66 #99', 'c7b6224d-c903-46b2-a16f-72489e39c96a', '+7788990011', 'contacto@proveedorf.com', 'https://www.proveedorf.com', 'JKL678901', 'CP6000', 'Fabricante de muebles y decoración');

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, sitioWeb, idTributario, idPostal, descripcion)
VALUES
('bb0e8400-e29b-41d4-a716-446655440012', 'Proveedor G', 'Pasaje del Río 11', 'f6023028-4a73-4db4-acec-3ad348481cac', '+8899001122', 'info@proveedorg.com', 'https://www.proveedorg.com', 'MNO789012', 'CP7000', 'Proveedor de alimentos y bebidas');

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, sitioWeb, idTributario, idPostal, descripcion)
VALUES
('cc0e8400-e29b-41d4-a716-446655440014', 'Proveedor H', 'Plaza Central 55', '01e27e6b-fe5d-460d-87da-d7898d5a1de0', '+9900112233', 'servicio@proveedorh.com', 'https://www.proveedorh.com', 'PQR890123', 'CP8000', 'Empresa de consultoría en tecnología');

--//-----------------------tbl_proveedores------------------------//--


--//-----------------------tbl_productos------------------------//--
INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Laptop Pro X', 'Laptop de alto rendimiento para profesionales', '550e8400-e29b-41d4-a716-446655440000', 1200.99, 1, 1, 1, 2, 3, 4, 'https://example.com/laptop1.jpg', 'https://example.com/laptop2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Teléfono Ultra 5G', 'Smartphone con tecnología 5G y cámara de 108MP', '660e8400-e29b-41d4-a716-446655440002', 899.99, 1, 2, 2, 3, 4, 5, 'https://example.com/phone1.jpg', 'https://example.com/phone2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Silla Ergonómica', 'Silla de oficina con soporte lumbar', '770e8400-e29b-41d4-a716-446655440004', 199.50, 2, 3, 3, 1, 2, 6, 'https://example.com/silla1.jpg', 'https://example.com/silla2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Mesa de Roble', 'Mesa de comedor de madera maciza', '880e8400-e29b-41d4-a716-446655440006', 450.00, 3, 4, 4, 2, 3, 7, 'https://example.com/mesa1.jpg', 'https://example.com/mesa2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Refrigerador Smart', 'Refrigerador con pantalla táctil y conectividad WiFi', '990e8400-e29b-41d4-a716-446655440008', 1500.75, 4, 5, 5, 3, 4, 8, 'https://example.com/refri1.jpg', 'https://example.com/refri2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Zapatos Deportivos', 'Zapatos ligeros para running y entrenamiento', 'aa0e8400-e29b-41d4-a716-446655440010', 120.99, 5, 6, 6, 1, 2, 9, 'https://example.com/zapatos1.jpg', 'https://example.com/zapatos2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Reloj Inteligente', 'Reloj con monitor de actividad y GPS', 'bb0e8400-e29b-41d4-a716-446655440012', 250.49, 6, 2, 7, 2, 3, 10, 'https://example.com/reloj1.jpg', 'https://example.com/reloj2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Cámara Profesional', 'Cámara DSLR con lente de 24-70mm', 'cc0e8400-e29b-41d4-a716-446655440014', 2200.00, 7, 7, 8, 3, 4, 11, 'https://example.com/camara1.jpg', 'https://example.com/camara2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Monitor 4K', 'Monitor de 32 pulgadas con resolución 4K UHD', '550e8400-e29b-41d4-a716-446655440000', 799.99, 8, 1, 9, 2, 3, 12, 'https://example.com/monitor1.jpg', 'https://example.com/monitor2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Mochila Impermeable', 'Mochila con compartimento para laptop y resistencia al agua', '660e8400-e29b-41d4-a716-446655440002', 89.99, 9, 8, 10, 1, 2, 13, 'https://example.com/mochila1.jpg', 'https://example.com/mochila2.jpg');

--//-----------------------tbl_productos------------------------//--
INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Laptop Pro X', 'Laptop de alto rendimiento para profesionales', '660e8400-e29b-41d4-a716-446655440002', 1200.99, 1, 1, 1, 2, 3, 4, 'https://example.com/laptop1.jpg', 'https://example.com/laptop2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Teléfono Ultra 5G', 'Smartphone con tecnología 5G y cámara de 108MP', '660e8400-e29b-41d4-a716-446655440002', 899.99, 1, 1, 2, 3, 4, 5, 'https://example.com/phone1.jpg', 'https://example.com/phone2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Silla Ergonómica', 'Silla de oficina con soporte lumbar', 'aa0e8400-e29b-41d4-a716-446655440010', 199.50, 1, 5, 3, 1, 2, 6, 'https://example.com/silla1.jpg', 'https://example.com/silla2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Mesa de Roble', 'Mesa de comedor de madera maciza', 'aa0e8400-e29b-41d4-a716-446655440010', 450.00, 1, 5, 4, 2, 3, 7, 'https://example.com/mesa1.jpg', 'https://example.com/mesa2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Refrigerador Smart', 'Refrigerador con pantalla táctil y conectividad WiFi', '990e8400-e29b-41d4-a716-446655440008', 1500.75, 1, 1, 5, 3, 4, 8, 'https://example.com/refri1.jpg', 'https://example.com/refri2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Zapatos Deportivos', 'Zapatos ligeros para running y entrenamiento', '550e8400-e29b-41d4-a716-446655440000', 120.99, 1, 6, 6, 1, 2, 9, 'https://example.com/zapatos1.jpg', 'https://example.com/zapatos2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Reloj Inteligente', 'Reloj con monitor de actividad y GPS', '660e8400-e29b-41d4-a716-446655440002', 250.49, 1, 1, 7, 2, 3, 10, 'https://example.com/reloj1.jpg', 'https://example.com/reloj2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Cámara Profesional', 'Cámara DSLR con lente de 24-70mm', '990e8400-e29b-41d4-a716-446655440008', 2200.00, 1, 1, 8, 3, 4, 11, 'https://example.com/camara1.jpg', 'https://example.com/camara2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Monitor 4K', 'Monitor de 32 pulgadas con resolución 4K UHD', '990e8400-e29b-41d4-a716-446655440008', 799.99, 1, 1, 9, 2, 3, 12, 'https://example.com/monitor1.jpg', 'https://example.com/monitor2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Mochila Impermeable', 'Mochila con compartimento para laptop y resistencia al agua', '990e8400-e29b-41d4-a716-446655440008', 89.99, 1, 1, 10, 1, 2, 13, 'https://example.com/mochila1.jpg', 'https://example.com/mochila2.jpg');
--//-----------------------tbl_productos------------------------//--

--//-----------------------tbl_SKU------------------------//--
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('111e8400-e29b-41d4-a716-446655440001', 'SKU-00001', 1);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('222e8400-e29b-41d4-a716-446655440002', 'SKU-00002', 2);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('333e8400-e29b-41d4-a716-446655440003', 'SKU-00003', 3);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('444e8400-e29b-41d4-a716-446655440004', 'SKU-00004', 4);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('555e8400-e29b-41d4-a716-446655440005', 'SKU-00005', 5);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('666e8400-e29b-41d4-a716-446655440006', 'SKU-00006', 6);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('777e8400-e29b-41d4-a716-446655440007', 'SKU-00007', 7);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('888e8400-e29b-41d4-a716-446655440008', 'SKU-00008', 8);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('999e8400-e29b-41d4-a716-446655440009', 'SKU-00009', 9);
INSERT INTO tbl_SKU (id, codigo, idProducto) VALUES ('849d0839-24f8-4009-b4b6-8565478949ff', 'SKU-00010', 10);
--//-----------------------tbl_SKU------------------------//--

--//-----------------------tbl_condicionesComerciales------------------------//--
INSERT INTO tbl_condicionesComerciales (nombre, descripcion) VALUES
('Pago Anticipado', 'El pago debe realizarse antes del envío del producto.'),
('Crédito 30 días', 'El cliente tiene un plazo de 30 días para pagar después de la entrega.'),
('Crédito 60 días', 'El cliente tiene un plazo de 60 días para pagar después de la entrega.'),
('Pago Contra Entrega', 'El pago se realiza al momento de la entrega del producto.'),
('Descuento por Volumen', 'Se aplican descuentos en compras mayores a cierta cantidad.'),
('Envío Gratuito', 'El envío es gratuito para pedidos superiores a un monto determinado.'),
('Garantía Extendida', 'Se ofrece una garantía extendida de hasta 2 años.'),
('Devolución Flexible', 'El cliente puede devolver el producto dentro de los primeros 30 días.'),
('Entrega Express', 'El pedido se entrega en un plazo máximo de 24 horas.'),
('Financiamiento Disponible', 'Se ofrece financiamiento en cuotas sin intereses.');
--//-----------------------tbl_condicionesComerciales------------------------//--

--//-----------------------tbl_condicionesLegales------------------------//--
INSERT INTO tbl_condicionesLegales (nombre, descripcion) VALUES
('Política de Privacidad', 'Regula la recopilación y uso de datos personales de los clientes.'),
('Términos y Condiciones', 'Establece las reglas y responsabilidades del uso del servicio.'),
('Garantía del Producto', 'Define la cobertura y duración de la garantía de los productos.'),
('Política de Devoluciones', 'Indica las condiciones y plazos para devoluciones y reembolsos.'),
('Uso de la Plataforma', 'Especifica cómo se debe utilizar la plataforma de ventas.'),
('Propiedad Intelectual', 'Protege los derechos de autor y marcas comerciales.'),
('Cumplimiento Fiscal', 'Regula el pago de impuestos y obligaciones fiscales.'),
('Normativas Ambientales', 'Asegura que los productos cumplen con estándares ecológicos.'),
('Protección al Consumidor', 'Garantiza los derechos y seguridad de los clientes.'),
('Jurisdicción Aplicable', 'Determina qué leyes y tribunales rigen en caso de disputas.');
--//-----------------------tbl_condicionesLegales------------------------//--