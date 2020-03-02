/*


autor       : Christian Salazar 
fecha       : 25/02/2020
descripcion : Script base de datos para carrito de compras 

*/

--drop database carrito

CREATE DATABASE carrito 
go
use carrito 
GO
CREATE TABLE usuarios 
(
idUsuario BIGINT IDENTITY(1,1) PRIMARY KEY, 
codigoUsuario CHAR(5),
nombre    VARCHAR(60) NOT NULL,
)
GO
CREATE TABLE productos 
(
idProducto			 BIGINT IDENTITY(1,1) PRIMARY KEY,
cantidadDisponible   INT NOT NULL,
codigoProducto       CHAR(5),
nombre               VARCHAR(60),
precio               DECIMAL(18,6) NOT NULL
)
GO
CREATE TABLE carrito 
(
idcarrito BIGINT IDENTITY(1,1) PRIMARY KEY,
idUsuario BIGINT ,
idProducto BIGINT,
cantidad   INT NOT NULL,
fechaActualiza DATETIME 
)

ALTER TABLE carrito 
ADD CONSTRAINT FK_Carrito_Usuario
FOREIGN KEY (idUsuario) REFERENCES usuarios (idUsuario)

ALTER TABLE carrito 
ADD CONSTRAINT FK_Carrito_Producto 
FOREIGN KEY (idProducto) REFERENCES productos (idProducto)
GO
BEGIN TRAN
GO
INSERT INTO usuarios  (codigoUsuario,nombre)
values ('CCSJ','Christian Salazar'), ('MCLR', 'Michelle Rodriguez'),('ADMIN','Administrador')
GO
INSERT INTO productos(codigoProducto,nombre,precio,cantidadDisponible)
values ('00001','FIGURA ACCION BATMAN',250000,3), ('00002', 'FIGURA ACCION FLASH',300000,2),
       ('00003','TRONO GAME  OF THRONES',120000,5)


