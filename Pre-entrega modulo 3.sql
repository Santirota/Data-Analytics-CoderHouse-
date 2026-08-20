Drop table IF EXISTS VENTAS;
DROP TABLE IF EXISTS Productos;
DROP TABLE IF EXISTS Clientes; 
DROP TABLE IF EXISTS Categorias; 
--Creacion de la tabla de categorias
Create table Categorias(
Id_categoria INT PRIMARY KEY NOT NULL,
Nombre_categoria VARCHAR (50) NOT NULL,
Descripcion VARCHAR(200)
);
--Creacion de la tabla de clientes
CREATE TABLE CLIENTES(
Id_cliente int Primary Key,
Nombre VARCHAR(100) NOT NULL, 
Email VARCHAR(100) UNIQUE,
Ciudad VARCHAR(50),
Fecha_registro date not null
);

--Creo la tabla de productos 
CREATE TABLE Productos(
Id_producto int PRIMARY KEY,
Nombre varchar (100)not null,
ID_Categoria INT Foreign Key references Categorias,
Precio DECIMAL (10,2)not null, 
Stock int default 0,
Activo TINYINT Default 1
);
--Creo tabla ventas
Create table ventas(
Id_venta int Primary Key,
Id_cliente int foreign Key references Clientes,
Id_Producto int foreign key references productos,
Cantidad int not null,
Precio_unitario decimal (10,2) Not null,
Fecha_venta date not null
);
--Inserto los valores a la tabla de categorias
INSERT INTO categorias VALUES (1,'Computacion','Laptops, PCs y monitores');
INSERT INTO categorias VALUES (2,'Accesorios','Perifericos y complementos');
INSERT INTO categorias VALUES (3,'Audio','Auriculares y parlantes');
INSERT INTO categorias VALUES (4,'Almacenamiento','Discos y memorias');
--Inserto los valores a la tabla de clientes
INSERT INTO clientes VALUES (1, 'María López',   'maria@mail.com',   'Buenos Aires', '2024-01-05');
INSERT INTO clientes VALUES (2, 'Carlos Ruiz',   'carlos@mail.com',  'Córdoba',      '2024-01-10');
INSERT INTO clientes VALUES (3, 'Ana Gómez',     'ana@mail.com',     'Rosario',      '2024-02-01');
INSERT INTO clientes VALUES (4, 'Pedro Sanz',    'pedro@mail.com',   'Mendoza',      '2024-02-15');
INSERT INTO clientes VALUES (5, 'Laura Torres',  'laura@mail.com',   'Tucumán',      '2024-03-01');
--Inserto los valores a la tabla de productos
INSERT INTO productos VALUES (1, 'Laptop Pro 15',       1, 1200.00, 15, 1);
INSERT INTO productos VALUES (2, 'Mouse Inalámbrico',   2,   28.00, 80, 1);
INSERT INTO productos VALUES (3, 'Monitor 4K 27"',      1,  450.00, 12, 1);
INSERT INTO productos VALUES (4, 'Auriculares BT Pro',  3,  120.00, 35, 1);
INSERT INTO productos VALUES (5, 'SSD Externo 1TB',     4,  130.00, 18, 1);
INSERT INTO productos VALUES (6, 'Teclado Mecánico',    2,   95.00, 40, 1);
--Inserto los valores a la tabla 
INSERT INTO ventas VALUES (1,  1, 1, 2, 1200.00, '2024-03-05');
INSERT INTO ventas VALUES (2,  2, 2, 5,   28.00, '2024-03-06');
INSERT INTO ventas VALUES (3,  3, 3, 1,  450.00, '2024-03-07');
INSERT INTO ventas VALUES (4,  1, 4, 2,  120.00, '2024-03-08');
INSERT INTO ventas VALUES (5,  4, 5, 3,  130.00, '2024-03-10');
INSERT INTO ventas VALUES (6,  2, 6, 4,   95.00, '2024-03-11');
INSERT INTO ventas VALUES (7,  5, 1, 1, 1200.00, '2024-03-12');
INSERT INTO ventas VALUES (8,  3, 2, 8,   28.00, '2024-03-13');
INSERT INTO ventas VALUES (9,  4, 4, 1,  120.00, '2024-03-14');
INSERT INTO ventas VALUES (10, 5, 3, 2,  450.00, '2024-03-15');
-- Validacion de que la carga se haya llevado a cabo correctamente 
SELECT * FROM categorias;
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;
--Las tablas se han cargado corretamente
