-- BodegaTech - Script de Inventario
-- Autor: Santiago Rodriguez Otaño
-- Fecha de entrega: 20/08/2026


--SECCION DDL
Drop table IF exists Inventario;
--Creacion de tabla inventario
Create table Inventario(
Id_producto int not null Primary key,
--Elegi int porque son numeros enteros que no van a tener necesidad de ser utilizados para operaciones matematicas
nombre_producto varchar(100),
Categoria varchar(100),
--en las dos columnas anteriores elegi varchar (100) porque ahi debe ir un texto de maximo 100 palabras
precio_unitario decimal (10,2),
stock_actual int,
Stock_minimo int,
fecha_ingreso date, 
--Elegi la columna date porque es una fecha de dia, mes y año
Activo tinyint,
);
Select*from inventario 
--Insert into para agregar datos a la tabla
--SECCION DML
Insert into inventario values
	('1','Laptop Pro 15','Computacion', 1200.00, '15','3', '2024-01-10','1'),
	('2', 'Mouse inalambrico','Accesorios',28.00, '80','10','2024-01-10','1'),
	('3', 'Monitor 4K 27"','Computacion',450.00,'12','2','2024-01-15','1'),
	('4','Teclado mecanico','Accesorios',95.00,'40','5','2024-01-15','1'),
	('5','Laptop Basic 14','Computacion',650.00,'20','3','2024-02-01','1'),
	('6','Auriculares BTpro','Audio',120.00,'35','5','2024-02-01','1'),
	('7','Hub USB C-7 Puertos','Accesorios',45.00,'60','10','2024-02-10','1'),
	('8','WebcamHD 1080p','Accesorios',85.00,'25','5','2024-02-10','1'),
	('9','SSDExterno1TB','Almacenamiento',130.00,'18','3','2024-03-01','1'),
	('10','ParlanteBluetooth','Audio',60.00,'45','8','2024-03-01','1')
	;
	Select*from inventario
	--Update y where para actualizar los datos
	Update inventario
	SET stock_actual = 12
	where Id_producto = 1;
	select *from inventario;
	--Se producen 12 ventas en el mouse inalambrico
	Update inventario 
	set stock_actual = 68 
	where id_producto = 2 

	--Se producen 5 ventas de auriculares bt pro
	update inventario
	set stock_actual = 30
	where id_producto = 6
	select * from inventario 
	--Queda inactivo el producto id 8
	Update inventario 
	set activo = 0 
	where id_producto = 8 
	Select * from inventario
