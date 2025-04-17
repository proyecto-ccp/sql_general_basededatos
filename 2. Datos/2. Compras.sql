--//-----------------------tbl_proveedores------------------------//--
INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, idtipodocumento, numerodocumento, fecharegistro)
VALUES ('3e075ba9-c330-4ff1-8825-afb0076989e0', 'Proveedor A', 'Av. Siempre Viva 123', '3e075ba9-c330-4ff1-8825-afb0076989e0', '+123456789', 'contacto@proveedora.com', 3, '110220330', NOW()::timestamp(6));

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, idtipodocumento, numerodocumento, fecharegistro)
VALUES
('660e8400-e29b-41d4-a716-446655440002', 'Proveedor B', 'Calle Falsa 456', 'ebc546ea-a179-4b0b-a833-178a53003ce6', '+987654321', 'ventas@proveedorb.com', 3, '110220331', NOW()::timestamp(6));

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, idtipodocumento, numerodocumento, fecharegistro)
VALUES
('770e8400-e29b-41d4-a716-446655440004', 'Proveedor C', 'Blvd. Central 789', 'ebc546ea-a179-4b0b-a833-178a53003ce6', '+1122334455', 'info@proveedorc.com', 3, '110220332', NOW()::timestamp(6));

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, idtipodocumento, numerodocumento, fecharegistro)
VALUES
('880e8400-e29b-41d4-a716-446655440006', 'Proveedor D', 'Avenida Los Pinos 321', '151f4de7-3aca-4c5a-91cf-443901132e57', '+5566778899', 'soporte@proveedord.com', 3, '110220333', NOW()::timestamp(6));

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, idtipodocumento, numerodocumento, fecharegistro)
VALUES
('990e8400-e29b-41d4-a716-446655440008', 'Proveedor E', 'Calle del Sol 654', '151f4de7-3aca-4c5a-91cf-443901132e57', '+6677889900', 'ventas@proveedore.com', 3, '110220334', NOW()::timestamp(6)); 

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, idtipodocumento, numerodocumento, fecharegistro)
VALUES
('aa0e8400-e29b-41d4-a716-446655440010', 'Proveedor F', 'Ruta 66 #99', 'a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', '+7788990011', 'contacto@proveedorf.com', 3, '110220335', NOW()::timestamp(6)); 

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, idtipodocumento, numerodocumento, fecharegistro)
VALUES
('bb0e8400-e29b-41d4-a716-446655440012', 'Proveedor G', 'Pasaje del Río 11', 'a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', '+8899001122', 'info@proveedorg.com', 3, '110220336', NOW()::timestamp(6)); 

INSERT INTO tbl_proveedores (id, nombre, direccion, idCiudad, telefono, correo, idtipodocumento, numerodocumento, fecharegistro)
VALUES
('cc0e8400-e29b-41d4-a716-446655440014', 'Proveedor H', 'Plaza Central 55', 'a41fcc14-ea78-4d1b-8a68-1cfec5ed170f', '+9900112233', 'servicio@proveedorh.com', 3, '110220337', NOW()::timestamp(6)); 

--//-----------------------tbl_proveedores------------------------//--


--//-----------------------tbl_productos------------------------//--
INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Laptop Pro X', 'Laptop de alto rendimiento para profesionales', '3e075ba9-c330-4ff1-8825-afb0076989e0', 1200.99, 1, 1, 1, 2, 3, 4, 'https://example.com/laptop1.jpg', 'https://example.com/laptop2.jpg');

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
('Monitor 4K', 'Monitor de 32 pulgadas con resolución 4K UHD', 'aa0e8400-e29b-41d4-a716-446655440010', 799.99, 8, 1, 9, 2, 3, 12, 'https://example.com/monitor1.jpg', 'https://example.com/monitor2.jpg');

INSERT INTO tbl_productos (nombre, descripcion, idProveedor, precioUnitario, idMedida, idCategoria, idMarca, idColor, idModelo, idMaterial, urlFoto1, urlFoto2)
VALUES
('Mochila Impermeable', 'Mochila con compartimento para laptop y resistencia al agua', '660e8400-e29b-41d4-a716-446655440002', 89.99, 9, 8, 10, 1, 2, 13, 'https://example.com/mochila1.jpg', 'https://example.com/mochila2.jpg');

--//-----------------------tbl_SKU------------------------//--

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