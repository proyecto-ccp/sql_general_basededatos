INSERT INTO tbl_parametros (id,valor,descripcion) VALUES 
('proveedoresUrlBase', 'https://proveedores-596275467600.us-central1.run.app', 'Servicio para la gestión de proveedores'),
('proveedoresPorId', '/api/Proveedores/Obtener', 'Path para consultar un proveedor'),
('inventariosUrlBase', 'https://inventarios-596275467600.us-central1.run.app', 'Servicio para la gestión del stock de productos'),
('inventariosConsultar', '/api/Inventarios/Consultar', 'Path para consultar el stock de un producto'),
('inventariosIngresar', '/api/Inventarios/Ingresar', 'Path para ingresar unidades al stock de un producto'),
('inventariosRetirar', '/api/Inventarios/Retirar', 'Path para retirar unidades al stock de un producto')