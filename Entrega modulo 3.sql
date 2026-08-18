--Crear tabla Clientes
Drop table Clientes;
create table Clientes(
id_cliente int,
nombre varchar(100),
perfil_bio text,
fecha_registro date
);
Select *from Clientes

--Crear tabla Productos
Create table Productos(
id_producto int,
Descripcion varchar(255),
Precio decimal(10,2),
esta_activo varchar(5)
);
Select *from Productos
--Int fue utilizado para los id ya que son numeros enteros pero no debemos hacer ninguna operacion matematica con ellos
--Varchar se utiliza cuando hay un texto y se pone entre parentesis el numero maximo de caracteres que se pueden utilizar
--Para la fecha se utiliza date, para poner dia, mes y año
--Por ultimo para el precio se utiliza el comando "decimal".
