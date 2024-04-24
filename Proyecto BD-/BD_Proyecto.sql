Create database Supermercado_Compre_Bien;


CREATE TABLE Tienda(
  ID_Tienda INTEGER NOT NULL,
  nombre_tienda VARCHAR(50) not null,
  Ubicacion_Tienda VARCHAR(50) NOT NULL,
);

create table Empleado(
  ID_Empleado INTEGER NOT NULL,
  Cedula VARCHAR(50) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Apellido1 VARCHAR(50) NOT NULL,
  Apellido2 VARCHAR(50) DEFAULT NULL,
  Fecha_Nacimiento DATE NOT NULL,
  email VARCHAR(100) NOT NULL,
  Puesto VARCHAR(50) DEFAULT NULL,
  Seccion VARCHAR(50) not null,
  Salario VARCHAR(50) NOT NULL,
);

create table Cliente(
	Codigo_Tarjeta_Puntos  INTEGER NOT NULL,
	Puntos INTEGER NOT NULL,
	Cedula  VARCHAR(50) NOT NULL,
	Nombre  VARCHAR(50) NOT NULL,
	Apellido1 VARCHAR(50) NOT NULL,
    Apellido2 VARCHAR(50) DEFAULT NULL,
	Fecha_Nacimiento DATE NOT NULL,
	Telefono VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
);

CREATE TABLE  Metodo_Pago(
  Codigo_Tarjeta_Puntos  INTEGER,
  Forma_Pago VARCHAR(50) NOT NULL,
  ID_Transaccion VARCHAR(50) NOT NULL,
  Fecha_Pago date NOT NULL,
  Total NUMERIC(15,2) NOT NULL,

);

create table Proveedor(
	ID_Proveedor INTEGER NOT NULL,
	Nombre_Proveedor VARCHAR(80) NOT NULL,
	Apellido1 VARCHAR(50) NOT NULL,
    Apellido2 VARCHAR(50),
	Area VARCHAR(80) not null,
	Nombre_Empresa VARCHAR(80) NOT NULL,
	Codigo_Producto VARCHAR(80) NOT NULL,
	Cantidad_Producto INTEGER NOT NULL,

);

CREATE TABLE Productos (
  Codigo_Producto VARCHAR(50) NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Empresa VARCHAR(50) DEFAULT NULL,
  Descripcion VARCHAR(MAX) NULL,
  Cantidad_En_Stock INT NOT NULL,
  Precio_Venta NUMERIC(15,2) NOT NULL,
  Precio_Proveedor NUMERIC(15,2) DEFAULT NULL,
);



CREATE TABLE Pedido (
  Codigo_Pedido INT NOT NULL,
  Fecha_Pedido date NOT NULL,
  Fecha_Esperada date NOT NULL,
  Fecha_Entrega date DEFAULT NULL,
  Estado VARCHAR(50) NOT NULL,
  Comentarios VARCHAR(MAX),
  ID_Proveedor INTEGER NOT NULL,
);
 

CREATE TABLE Detalle_Pedido (
  Codigo_Pedido INT NOT NULL,
  Codigo_Producto VARCHAR(50) NOT NULL,
  Cantidad INT NOT NULL,
  Precio_Unidad NUMERIC(15,2) NOT NULL,
);


CREATE TABLE Fruteria(
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL, 
  Nombre VARCHAR(70) NOT NULL,
  Fecha_Vencimiento DATE NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  Precio_Unidad NUMERIC(15,2),
  Precio_KG NUMERIC(15,2),
);


CREATE TABLE Verdureria(
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Fecha_Vencimiento DATE NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  Precio NUMERIC(15,2),
  Precio_KG NUMERIC(15,2),
);

CREATE TABLE Carniceria(
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra BIGINT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Fecha_Vencimiento DATE NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  Precio_KG NUMERIC(15,2) NOT NULL
);

CREATE TABLE Farmacia(
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Fecha_Vencimiento DATE NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  Precio NUMERIC(15,2) NOT NULL,
);



CREATE TABLE Licorera (
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Cantidad_ML VARCHAR(50) NOT NULL,
  Fecha_Vencimiento DATE NOT NULL,
  Precio NUMERIC(15,2) NOT NULL,
  Estado VARCHAR(50) NOT NULL,
);

CREATE TABLE Panaderia (
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Fecha_Vencimiento DATE NOT NULL,
  Precio NUMERIC(15,2) NOT NULL,
  Estado VARCHAR(50) NOT NULL,
);

CREATE TABLE Limpieza (
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Fecha_Vencimiento DATE NOT NULL,
  Precio NUMERIC(15,2) NOT NULL,
  Cantidad_KG NUMERIC(15,2),
  Cantidad_ML NUMERIC(15,2),
  Estado VARCHAR(50) NOT NULL,
);

CREATE TABLE Hogar(
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Precio NUMERIC(15,2) NOT NULL,
  Estado VARCHAR(50) NOT NULL,

);

CREATE TABLE Mascota(
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Precio NUMERIC(15,2) NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  Cantidad_KG NUMERIC(15,2)
);

CREATE TABLE Abarrotes(
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Precio NUMERIC(15,2) NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  Cantidad_KG NUMERIC(15,2),
  Cantidad_ML NUMERIC(15,2)
);

CREATE TABLE Dulceria(
  Codigo_Producto VARCHAR(50) NOT NULL,
  Codigo_Barra INT NOT NULL,
  Nombre VARCHAR(70) NOT NULL,
  Precio NUMERIC(15,2) NOT NULL,
);



-- Primary Key 
ALTER TABLE Tienda ADD CONSTRAINT PK_TIENDA PRIMARY KEY (ID_Tienda);

ALTER TABLE Empleado ADD CONSTRAINT PK_Empleado PRIMARY KEY (ID_Empleado);

ALTER TABLE Cliente ADD CONSTRAINT PK_Cliente PRIMARY KEY (Codigo_Tarjeta_Puntos );

ALTER TABLE Metodo_Pago ADD CONSTRAINT PK_Metodo_Pago PRIMARY KEY (ID_Transaccion);

ALTER TABLE Proveedor ADD CONSTRAINT PK_Proveedor PRIMARY KEY (ID_Proveedor);

ALTER TABLE Producto ADD CONSTRAINT PK_Producto PRIMARY KEY (Codigo_Producto);

ALTER TABLE Pedido ADD CONSTRAINT PK_Pedido PRIMARY KEY (Codigo_Pedido);

ALTER TABLE  Detalle_Pedido ADD CONSTRAINT PK_Detalle_Pedido PRIMARY KEY (Codigo_Pedido, Codigo_Producto);

ALTER TABLE Fruteria ADD CONSTRAINT PK_Fruteria PRIMARY KEY ( Codigo_Producto, Codigo_Barra );

ALTER TABLE Verdureria ADD CONSTRAINT PK_Verdureria PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Carniceria ADD CONSTRAINT PK_Carniceria PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Farmacia ADD CONSTRAINT PK_Farmacia PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Licorera ADD CONSTRAINT PK_Licorera PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Panaderia ADD CONSTRAINT PK_Panaderia PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Limpieza ADD CONSTRAINT PK_Limpieza PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Hogar ADD CONSTRAINT PK_Hogar PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Mascota ADD CONSTRAINT PK_Mascotas PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Abarrotes ADD CONSTRAINT PK_Abarrotes PRIMARY KEY (Codigo_Producto, Codigo_Barra);

ALTER TABLE Dulceria ADD CONSTRAINT PK_Dulceria PRIMARY KEY (Codigo_Producto, Codigo_Barra);



-- Foreign Key 
ALTER TABLE Fruteria ADD CONSTRAINT FK_Fruteria_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Verdureria ADD CONSTRAINT FK_Vegetales_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Farmacia ADD CONSTRAINT FK_Farmacia_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Mascota ADD CONSTRAINT FK_Mascota_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Abarrotes ADD CONSTRAINT FK_Abarrotes_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Hogar ADD CONSTRAINT FK_Hogar_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Limpieza ADD CONSTRAINT FK_Limpieza_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Panaderia ADD CONSTRAINT FK_Panadaria_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Licorera ADD CONSTRAINT FK_Licorera_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Carniceria ADD CONSTRAINT FK_Carniceria_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Dulceria ADD CONSTRAINT FK_Dulceria_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Proveedor ADD CONSTRAINT FK_Proveedor_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);

ALTER TABLE Detalle_Pedido ADD CONSTRAINT FK_Detalle_Pedido_Pedido FOREIGN KEY (Codigo_Pedido) REFERENCES Pedido (Codigo_Pedido);

ALTER TABLE Detalle_Pedido ADD CONSTRAINT FK_Detalle_Pedido_Producto FOREIGN KEY (Codigo_Producto) REFERENCES Producto (Codigo_Producto);


--Datos de prueba
INSERT INTO Tienda VALUES (01,'Compre Bien SC','San Carlos');

--Empleados

--Gerente:
INSERT INTO Empleado VALUES (1, '204620758', 'Alejandro', 'García', 'Pérez', '1998-05-19', 'alejgar@gmail.com', 'null','Gerente','¢1.150.060');

--Responsables de seccion:

INSERT INTO Empleado VALUES (2,'208340261', 'Veronica', 'Salas', 'Montero', '2001-01-17', 'Versal03@gmail.com', 'Responsable de seccion','Fruteria', '¢403.461');
INSERT INTO Empleado VALUES (3,'208320263', 'Mario', 'Chavez', 'Idalgo', '2002-05-03', 'March56@gmail.com', 'Responsable de seccion','Verdureria', '¢403.461');
INSERT INTO Empleado VALUES (4,'205340461', 'Victoria', 'Ugalde', 'Barboza', '2003-09-19', 'Victbar09@gmail.com', 'Responsable de seccion','Carniceria', '¢403.461');
INSERT INTO Empleado VALUES (5,'208540231', 'Marco', 'Lopez', 'Quesada', '2000-10-14', 'MarcoLop10@gmail.com', 'Responsable de seccion','Farmacia', '¢403.461');
INSERT INTO Empleado VALUES (6,'202640215', 'David', 'Rojas', 'Araya', '1995-12-27', 'Davara1912@gmail.com', 'Responsable de seccion','Licorera', '¢403.461');
INSERT INTO Empleado VALUES (7,'207140251', 'Melanie', 'Solis', 'Garcia', '2003-05-01', 'MelSol012@gmail.com', 'Responsable de seccion','Panaderia', '¢403.461');
INSERT INTO Empleado VALUES (8,'208320243', 'Daniel', 'Mendosa', 'Piedra', '2001-08-02', 'DanPie028@gmail.com', 'Responsable de seccion','Limpieza', '¢403.461');
INSERT INTO Empleado VALUES (9,'208920343', 'Roberto', 'Salas', 'Ruiz', '2002-09-03', 'roberto98@gmail.com', 'Responsable de seccion','Hogar', '¢403.461');
INSERT INTO Empleado VALUES (10,'208120443', 'Lucia', 'Gonzales', 'Campos', '2004-06-07', 'gonzaleslucia028@gmail.com', 'Responsable de seccion','Mascora', '¢403.461');
INSERT INTO Empleado VALUES (11,'208420246', 'Fabiola', 'Godinez', 'Castro', '2000-10-10', 'fabigo89028@gmail.com', 'Responsable de seccion','Abarrotes', '¢403.461');
INSERT INTO Empleado VALUES (12,'208520346', 'Alejandra', 'Martinez', 'Ruiz', '2000-11-10', 'ale0989@gmail.com', 'Responsable de seccion','Dulceria', '¢403.461');


--Empleados de seccion: 

--Fruteria
INSERT INTO Empleado VALUES (14, '208340324', 'Johny', 'Alfaro', 'Lopez', '1990-05-15', 'john0320@gmail.com', 'Empleado de seccion','Fruteria', '¢300,060');
INSERT INTO Empleado VALUES (15, '205320222', 'July', 'Solis', 'Fernadez', '1985-08-20', 'july2065@gmail.com', 'Empleado de seccion','Fruteria', '¢300,060');

--Verdureria
INSERT INTO Empleado VALUES (16, '205320236', 'Emily', 'Bonilla', 'Grecia', '1995-03-25', 'emilyBon20@gmail.com', 'Empleado de seccion','Verdureria', '¢300,060');
INSERT INTO Empleado VALUES (17, '206640555', 'Dolores', 'Murillo', 'Robles', '1988-07-01', 'Dolo55@gmail.com', 'Empleado de seccion','Verdureria', '¢300,060');

--Carniceria
INSERT INTO Empleado VALUES (18, '203340616', 'Michell', 'Quesada', NULL, '1982-12-10', 'michQ88@gmail.com','Empleado de seccion','Carniceria', '¢300,060');
INSERT INTO Empleado VALUES (19, '205420158', 'Christo', 'Varela', 'Vega', '1980-02-08', 'christoVeg69@gmail.com','Empleado de seccion','Carniceria', '¢300,060');

--Farmacia
INSERT INTO Empleado VALUES (20, '202320255', 'Sara', 'Renata', 'Fuentes', '1993-09-18', 'saraRen78@gmail.com', 'Empleado de seccion','Farmacia', '¢300,060');
INSERT INTO Empleado VALUES (21, '123456789', 'Luisa', 'Hernández', 'Gómez', '2002-01-12', 'Luhe23@gmail.com', 'Empleado de seccion','Farmacia', '¢300,060');

--Licorera
INSERT INTO Empleado VALUES (22, '987654321', 'María', 'González', 'López', '2003-06-27', 'Margo71@gmail.com', 'Empleado de seccion','Licorera', '¢300,060');
INSERT INTO Empleado VALUES (23, '456789123', 'Carolina', 'Martínez', 'Pérez', '1998-07-31', 'Carmar69@gmail.com', 'Empleado de seccion','Licorera', '¢300,060');

--Panaderia
INSERT INTO Empleado VALUES (24, '654321987', 'Allison', 'Rodríguez', 'Sánchez', '1997-09-06', 'Anaro82@gmail.com', 'Empleado de seccion','Panaderia', '¢300,060');
INSERT INTO Empleado VALUES (25, '321987654', 'Javier', 'López', 'Fernández', '1997-04-13', 'Javlop44@gmail.com', 'Empleado de seccion','Panaderia', '¢300,060');

--Limpieza
INSERT INTO Empleado VALUES (26, '789123456', 'Laura', 'Díaz', 'Vargas', '1999-11-17', 'Laudia61@gmail.com', 'Empleado de seccion','Limpieza', '¢300,060');
INSERT INTO Empleado VALUES (27, '234567890', 'Pedro', 'Sánchez', 'Jiménez', '1990-05-23', 'PedroSan32@gmail.com','Empleado de seccion','Limpieza', '¢300,060');

--Hogar
INSERT INTO Empleado VALUES (28,'208340201', 'Veroliz', 'Ugalde', 'Montero', '2000-02-17', 'Vero13@gmail.com', 'Empleado de seccion','Hogar', '¢300,060');
INSERT INTO Empleado VALUES (29,'208320787', 'Marta', 'Corrales', 'Idalgo', '2004-06-03', 'Mart256@gmail.com', 'Empleado de seccion','Hogar', '¢300,060');

--Mascota
INSERT INTO Empleado VALUES (30,'205340456', 'Victor', 'Rojas', 'Barboza', '2002-03-13', 'Vict109@gmail.com', 'Empleado de seccion','Mascota', '¢300,060');
INSERT INTO Empleado VALUES (31,'208540123', 'Julian', 'Quesada', 'Quesada', '2001-10-10', 'Julian33@gmail.com','Empleado de seccion','Mascpta', '¢300,060');

--Abarrotes
INSERT INTO Empleado VALUES (32,'202640321', 'Daniela', 'Picado', 'Araya', '1999-12-28', 'Dani6912@gmail.com', 'Empleado de seccion','Abarrotes', '¢300,060');
INSERT INTO Empleado VALUES (33,'207140654', 'Bob', 'Benavides', 'Garcia', '1983-05-15', 'BobBen12@gmail.com', 'Empleado de seccion','Abarrotes', '¢300,060');

--Dulceria
INSERT INTO Empleado VALUES (34,'202440421', 'Marco', 'Ramirez', 'Mena', '1999-10-28', 'marco87@gmail.com', 'Empleado de seccion','Dulceria', '¢300,060');
INSERT INTO Empleado VALUES (35,'207740354', 'Monica', 'Benavides', 'Rivera', '2000-08-15', 'rivmonica12@gmail.com', 'Empleado de seccion','Dulceria', '¢300,060');

--Reponedores:
INSERT INTO Empleado VALUES (36,'206420556', 'Mauren', 'Quiros', 'Quiros', '1990-09-20', 'mauquiro45@gmail.com',null, 'Reponedores', '¢400.461');
INSERT INTO Empleado VALUES (37,'208020956', 'Oscar', 'Ruiz', 'Garcia', '2000-08-05', 'oscarrg8@gmail.com',null,'Reponedores', '¢400.461');
INSERT INTO Empleado VALUES (38,'201920557', 'Rogelio', 'Campos', 'Cespedes', '2003-02-25', 'rogecampos90@gmail.com', null,'Reponedores', '¢400.461');

--Cajeros
INSERT INTO Empleado VALUES (39,'102420576', 'Marcela', 'Gonzales', 'Cordoba', '2001-09-10', 'marcelaqc28@gmail.com',null, 'Cajeros', '¢400.461');
INSERT INTO Empleado VALUES (40,'308030356', 'Ronaldo', 'Sibaja', 'Godinez', '1995-12-29', 'sibajaronaldo8@gmail.com',null,'Cajeros', '¢400.461');
INSERT INTO Empleado VALUES (41,'201720567', 'Rocio', 'Campos', 'Campos', '1999-07-05', 'ccrocio@gmail.com', null,'Cajeros', '¢400.461');

--Almacen 
INSERT INTO Empleado VALUES (42,'208420553', 'Eduardo', 'Quiros', 'Ramirez', '1999-11-10', 'eduramirez@gmail.com',null, 'Almacen', '¢400.461');
INSERT INTO Empleado VALUES (43,'203020926', 'Edward', 'Garcia', 'Diaz', '2001-04-09', 'edwardd@gmail.com',null,'Almacen', '¢400.461');
INSERT INTO Empleado VALUES (44,'201420537', 'Hazel', 'Quijena', 'Lopez', '2002-03-01', 'hazel98@gmail.com', null,'Almacen', '¢400.461');

--Clientes:
INSERT INTO Cliente VALUES  (001, 100, '208340261', 'Malcom', 'Salas', 'Montero', '2001-01-17', '1234-5678', 'Vero123@gmail.com');
INSERT INTO Cliente VALUES  (002, 150, '208340262', 'Carol', 'Garcia', 'Lopez', '1995-05-20', '9876-4321', 'Carl789@gmail.com');
INSERT INTO Cliente VALUES  (003, 200, '208340263', 'Martina', 'Rodriguez', 'Perez', '1988-09-10', '5556-6777', 'Mari234@gmail.com');
INSERT INTO Cliente VALUES  (004, 75, '208340264', 'Lizz', 'Martinez', 'Gonzalez', '1976-12-03', '1112-2233', 'Luis567@gmail.com');
INSERT INTO Cliente VALUES  (005, 300, '208340265', 'Ana Maria', 'Hernandez', 'Sanchez', '1990-03-15', '9998-8777', 'Ana456@gmail.com');
INSERT INTO Cliente VALUES  (006, 50, '208340266', 'Javier', 'Diaz', 'Alvarez', '2000-07-25', '333444555', 'Javi789@gmail.com');
INSERT INTO Cliente VALUES  (007, 250, '208340267', 'Lucas', 'Sanchez', 'Gomez', '1985-11-30', '7778-8999', 'Laur123@gmail.com');
INSERT INTO Cliente VALUES  (008, 180, '208340268', 'Pablo', 'Gutierrez', 'Jimenez', '1992-04-05', '2233-3444', 'Pedr789@gmail.com');
INSERT INTO Cliente VALUES  (009, 120, '208340269', 'Ismael', 'Lopez', 'Diaz', '1978-08-12', '8887-7766', 'Isab234@gmail.com');
INSERT INTO Cliente VALUES  (010, 220, '208340270', 'Joshua', 'Gonzalez', 'Romero', '1983-02-28', '4455-5666', 'Juan678@gmail.com');

--Metodo de pago:
INSERT INTO Metodo_Pago VALUES (001, 'PayPal', 'PAy1234', '2024-03-28', 250.000);
INSERT INTO Metodo_Pago VALUES (002, 'Efectivo', 'EFE5678', '2024-03-27', 35.000);
INSERT INTO Metodo_Pago VALUES (003, 'Tarjeta', 'TAR9101', '2024-03-26', 45.000);
INSERT INTO Metodo_Pago VALUES (004, 'Tarjeta', 'TAR2345', '2024-03-25', 55.000);
INSERT INTO Metodo_Pago VALUES (005, 'PayPal', 'PAy6789', '2024-03-24', 65.000);
INSERT INTO Metodo_Pago VALUES (006, 'Efectivo', 'EFE5432', '2024-03-23', 75.000);
INSERT INTO Metodo_Pago VALUES (007, 'Tarjeta', 'TAR7890', '2024-03-22', 85.000);
INSERT INTO Metodo_Pago VALUES (008, 'Tarjeta', 'TAR4567', '2024-03-21', 95.000);
INSERT INTO Metodo_Pago VALUES (009, 'PayPal', 'PAy3210', '2024-03-20', 105.000);
INSERT INTO Metodo_Pago VALUES (010, 'Efectivo', 'EFE8765', '2024-03-19', 115.000);

--Proveedores

--Fruteria
INSERT INTO Proveedor VALUES  (1, 'Josue', 'Gonzales', 'López','Fruteria','3 Piñas A.C', '0001A', 60);
INSERT INTO Proveedor VALUES  (2, 'Luiza', 'Barboza', 'López','Fruteria','3 Piñas A.C', '0001B', 60);
INSERT INTO Proveedor VALUES  (3, 'Miguel', 'Barboza', 'Hernandez','Fruteria','3 Piñas A.C', '0001C', 60);
INSERT INTO Proveedor VALUES  (4, 'Luis', 'Castillo', 'Solis','Fruteria','3 Piñas A.C', '0001D', 60);

--Verdureria
INSERT INTO Proveedor VALUES  (1, 'Gabriela', 'Ramirez', 'Solis','Verdureria','Aire fresco', '0002A', 300);
INSERT INTO Proveedor VALUES  (2, 'Gabriel', 'Rodrigues', 'Solano','Verdureria','Aire fresco', '0002B', 300);
INSERT INTO Proveedor VALUES  (3, 'Pablo', 'Marin', 'Barboza','Verdureri','Aire fresco', '0002C', 300);
INSERT INTO Proveedor VALUES  (4, 'Fabian', 'Rojas', 'Ugalde','Verdureria','Aire fresco', '0002D', 300);

--Carniceria
INSERT INTO Proveedor VALUES  (1, 'Laura', 'Rivera', 'Herrera', 'Carniceria','Tres Jotas', '0003A', 100);
INSERT INTO Proveedor VALUES  (2, 'Lorenzo', 'Rojas', 'Morena', 'Carniceria','Tres Jotas', '0003B', 100);
INSERT INTO Proveedor VALUES  (3, 'Cristian', 'Chavez', 'Morin', 'Carniceria','Tres Jotas', '0003C', 100);
INSERT INTO Proveedor VALUES  (4, 'Daniel', 'Rojas', 'Ugalde', 'Carniceria','Tres Jotas', '0003D', 100);

--Farmacia
INSERT INTO Proveedor VALUES  (1, 'Ruperto', 'Peréz', 'Herrera', 'Farmacia','Inyect', '0004A', 200);
INSERT INTO Proveedor VALUES  (2, 'Ronald', 'Sibaja', 'Murillo', 'Farmacia','Inyect', '0004B', 200);
INSERT INTO Proveedor VALUES  (3, 'Pedro', 'Murillo', 'Perez', 'Farmacia','Inyect', '0004C', 200);
INSERT INTO Proveedor VALUES  (4, 'Taylor', 'Peréz', 'Solano', 'Farmacia','Inyect', '0004D', 200);


--Licorera
INSERT INTO Proveedor VALUES  (1, 'Gabriel', 'Fernández', 'Ruiz', 'Licorera','Licor A.C', '0005A', 300);
INSERT INTO Proveedor VALUES  (2, 'Diego', 'González', 'Fernández','Licorera', 'Licor A.C', '0005B', 60);
INSERT INTO Proveedor VALUES  (3, 'Guillermo', 'Chacon', 'Piedra', 'Licorera','Licor A.C', '0005C', 100);
INSERT INTO Proveedor VALUES  (4, 'Daniela', 'Valezco', 'Fernández','Licorera', 'Licor A.C', '0005D', 170);
INSERT INTO Proveedor VALUES  (5, 'Fiorella', 'Zanora', 'Jimenez', 'Licorera','CocaCola', '0006A', 300);
INSERT INTO Proveedor VALUES  (6, 'Daniel', 'Araya', 'Fernández','Licorera', 'CocaCola', '0006B', 60);
INSERT INTO Proveedor VALUES  (7, 'Gustavo', 'Chacon', 'Espinoza', 'Licorera','CocaCola', '0006C', 100);
INSERT INTO Proveedor VALUES  (8, 'Donalld', 'Valenciaga', 'Fidman','Licorera', 'CocaCola', '0006D', 170);


--Panaderia
INSERT INTO Proveedor VALUES  (1, 'Juan', 'Gutiérrez', 'López', 'Panaderia', 'Bimbo', '0007A', 300);
INSERT INTO Proveedor VALUES  (2, 'Julian', 'Fernandez', 'Marin', 'Panaderia', 'Bimbo', '0007B', 300);
INSERT INTO Proveedor VALUES  (3, 'July', 'Huertas', 'López', 'Panaderia', 'Bimbo', '0007C', 300);
INSERT INTO Proveedor VALUES  (4, 'Joel', 'Fidman', 'Quiroz', 'Panaderia', 'Bimbo', '0007D', 300);
INSERT INTO Proveedor VALUES  (5, 'María', 'Hernández', 'Martínez','Panaderia', 'Pozuelo', '0008A', 100);
INSERT INTO Proveedor VALUES  (6, 'Julio', 'Fernandez', 'Lorenz', 'Panaderia', 'Pozuelo', '0008B', 300);
INSERT INTO Proveedor VALUES  (7, 'Marco', 'Sanchez', 'Montero','Panaderia', 'Pozuelo', '0008C', 180);
INSERT INTO Proveedor VALUES  (8, 'Maria', 'Quesada', 'Miranda','Panaderia', 'Pozuelo', '0008D', 180);


--Limpieza
INSERT INTO Proveedor VALUES  (1, 'Ana', 'Sánchez', 'Gómez','Limpieza','P&G', '0009A', 120);
INSERT INTO Proveedor VALUES  (2, 'Fredy', 'Santos', 'Gómez','Limpieza','P&G', '0009B', 100);
INSERT INTO Proveedor VALUES  (3, 'Dawer', 'Solis', 'Gonzales','Limpieza','P&G', '0009C', 150);
INSERT INTO Proveedor VALUES  (4, 'Amelia', 'Zamora', 'Quiros','Limpieza','P&G', '0009D', 120);


--Hogar
INSERT INTO Proveedor VALUES  (1, 'Roberto', 'Sánchez', 'Gonzales','Hogar','H&H', '0010A', 120);
INSERT INTO Proveedor VALUES  (2, 'Ronald', 'Solis', 'Flores','Hogar','H&H', '0010B', 170);
INSERT INTO Proveedor VALUES  (3, 'Ruby', 'Araya', 'Marin','Hogar','H&H', '0010C', 140);
INSERT INTO Proveedor VALUES  (4, 'Pablo', 'Zamora', 'Rojas','Hogar','H&H', '0010D', 100);

--Mascota
INSERT INTO Proveedor VALUES  (1, 'Lucia', 'Jimenéz', 'Robles','Mascota','Colita Feliz', '0011A', 90);
INSERT INTO Proveedor VALUES  (2, 'Lucrecia', 'Quesada', 'Rojas','Mascota','Colita Feliz', '0011B', 180);
INSERT INTO Proveedor VALUES  (3, 'Marco', 'Lopez', 'Lopez','Mascota','Colita Feliz', '0011C', 100);
INSERT INTO Proveedor VALUES  (4, 'Fiorela', 'Jorobado', 'Robles','Mascota','Colita Feliz', '0011D', 140);

--Abarrotes
INSERT INTO Proveedor VALUES  (1, 'Carlos', 'Martínez', 'Pérez','Abarrotes', 'Tío Pelón', '0012', 220);
INSERT INTO Proveedor VALUES  (2, 'Carol', 'Lopez', 'Pérez','Abarrotes', 'Tío Pelón', '0012', 220);
INSERT INTO Proveedor VALUES  (3, 'Carolina', 'Mendez', 'Delgado','Abarrotes', 'Tío Pelón', '0012', 220);
INSERT INTO Proveedor VALUES  (4, 'Ruby', 'Martines', 'Delgado','Abarrotes', 'Tío Pelón', '0012', 220);

INSERT INTO Proveedor VALUES  (5, 'Luis', 'Díaz', 'Rodríguez', 'Abarrotes','Dos Pinos', '0013', 250);
INSERT INTO Proveedor VALUES  (6, 'Marco', 'Dolores', 'Rojas', 'Abarrotes','Dos Pinos', '0013', 250);
INSERT INTO Proveedor VALUES  (7, 'Lory', 'Ruiz', 'Jimenez', 'Abarrotes','Dos Pinos', '0013', 250);
INSERT INTO Proveedor VALUES  (8, 'Martin', 'Díaz', 'Garcia', 'Abarrotes','Dos Pinos', '0013', 250);

--Dulceria
INSERT INTO Proveedor VALUES  (1, 'Joselin', 'Carjeta', 'Martinez', 'Dulceria','Néstle', '0013A', 250);
INSERT INTO Proveedor VALUES  (2, 'Jose', 'Coral', 'Lopez', 'Dulceria','Néstle', '0013B', 280);
INSERT INTO Proveedor VALUES  (3, 'Pablo', 'Araya', 'Zamora', 'Dulceria','Néstle', '0013C', 250);
INSERT INTO Proveedor VALUES  (4, 'William', 'Vega', 'Vigente', 'Dulceria','Néstle', '0013D', 150);

--Productos:



--Fruteria:
-- 3 Piñas A.C
INSERT INTO Productos VALUES  ('0001A', 'Mango', '3 Piñas A.C', 'Mango verde', 25, ¢1.100, ¢880);
INSERT INTO Productos VALUES  ('0001B', 'Bananos', '3 Piñas A.C', null, 20, ¢1.500, ¢1.200);
INSERT INTO Productos VALUES  ('0001C', 'Papaya', '3 Piñas A.C', null, 30, ¢1.100, ¢220);
INSERT INTO Productos VALUES  ('0001D', 'Piña', '3 Piñas A.C', null, 22, ¢850, ¢220);


--Verdureria:
-- Aire fresco
INSERT INTO Productos VALUES  ('0002A', 'Culantro', 'Aire fresco', null, 23, ¢1.100, ¢880);
INSERT INTO Productos VALUES  ('0002B', 'Chila dulce', 'Aire fresco', null, 20, ¢1.500, ¢1.200);
INSERT INTO Productos VALUES  ('0002C', 'Cebolla morada', 'Aire fresco', null, 30, ¢1.100, ¢220);
INSERT INTO Productos VALUES  ('0002D', 'Ajo', 'Aire fresco', null, 22, ¢850, ¢220);

--Carniceria:
-- Tres Jotas
INSERT INTO Productos VALUES ('0003A', 'Pollo', 'Tres Jotas', 'Pollo picante', 90, ¢10.000, ¢4.000);
INSERT INTO Productos VALUES ('0003B', 'Chorizo', 'Tres Jotas', 'Chorizo picante', 88, ¢3.000, ¢2.400);
INSERT INTO Productos VALUES ('0003C', 'Salchichón', 'Tres Jotas', 'Salchichón ', 120, ¢3.800, ¢3.040);
INSERT INTO Productos VALUES ('0003D', 'Carne Molida', 'Tres Jotas', 'Por kilo', 100, ¢3.350, ¢2.680);

--Farmacia
-- Inyect
INSERT INTO Productos VALUES ('0004A', 'Panadol', 'Inyect', 'Pastilla ', 50, ¢1.000, ¢450);
INSERT INTO Productos VALUES ('0004B', 'Emma', 'Inyect', 'Pastilla anticonceptiba', 88, ¢3.000, ¢2.400);
INSERT INTO Productos VALUES ('0004C', 'Electrolit', 'Inyect', 'Suero bebible', 120, ¢3.800, ¢3.040);
INSERT INTO Productos VALUES ('0004D', 'Omeprazol', 'Inyect', 'Para la acidez estomacal', 100, ¢3.350, ¢2.680);

--Licorera
--Licor A.C
INSERT INTO Productos VALUES ('0005B', 'Cacique', 'Licor A.C', null, 60, ¢1.500, ¢1.400);
INSERT INTO Productos VALUES ('0005B', 'Ron Centenario', 'Licor A.C', null, 88, ¢3.000, ¢2.400);
INSERT INTO Productos VALUES ('0005C', 'Tequila Rose', 'Licor A.C', null, 120, ¢3.800, ¢3.040);
INSERT INTO Productos VALUES ('0005D', 'Cerveza Sol', 'Licor A.C',null, 100, ¢3.350, ¢2.680);

-- CocaCola
INSERT INTO Productos VALUES ('0006A', 'Refresco de Cola', 'CocaCola', 'CocaCola de 2 litros por unidad', 300, ¢1.602, ¢1.280);
INSERT INTO Productos VALUES ('0006B', 'Refresco de Limón', 'CocaCola', 'Refresco de 2 litros por unida', 218, ¢1.225, ¢980);
INSERT INTO Productos VALUES ('0006C', 'Agua Mineral', 'CocaCola', 'Agua mineral de 2 litros por unida', 60, ¢1.100, ¢880);
INSERT INTO Productos VALUES ('0006D', 'Refresco de Naranja', 'CocaCola', 'Refresco de 2 litros por unidas', 100, ¢1.825, ¢1.460);

--Panaderia:
--Bimbo
INSERT INTO Productos VALUES  ('0007A', 'Pan Blanco', 'Bimbo', 'Pan blanco tamaño Mediano', 25, ¢1.100, ¢880);
INSERT INTO Productos VALUES  ('0007B', 'Pan Integral', 'Bimbo', 'Pan integral tamaño Mediano', 20, ¢1.500, ¢1.200);
INSERT INTO Productos VALUES  ('0007C', 'Galletas Saladas', 'Bimbo', 'Paquete de 12 unidades', 30, ¢1.100, ¢220);
INSERT INTO Productos VALUES  ('0007D', 'Pastel de Chocolate', 'Bimbo', 'Paquete por unidad', 22, ¢850, ¢220);

-- Pozuelo
INSERT INTO Productos VALUES ('008A', 'Galletas de Soda', 'Pozuelo', 'Paquete de 12 unidades', 37, ¢1.200, ¢960);
INSERT INTO Productos VALUES ('0008B', 'Galletas de Coco', 'Pozuelo', 'Paquete de 12 unidades', 26, ¢1.350, ¢1.080);
INSERT INTO Productos VALUES ('0008C', 'Barritas de Avena', 'Pozuelo', 'Paquete de 14 unidades', 66, ¢1.650, ¢1.320);
INSERT INTO Productos VALUES ('0008D', 'Quequitos', 'Pozuelo', 'Paquete de 6 unidades', 120, ¢650, ¢520);

--Limpieza:
-- P&G
INSERT INTO Productos VALUES ('0009A', 'Crema Facial', 'P&G', '50 gramos por unidad', 91, ¢2.400, ¢1.120);
INSERT INTO Productos VALUES ('0009B', 'Shampoo', 'P&G', '1000 Mililitros por unidad', 83, ¢2.500, ¢2.000);
INSERT INTO Productos VALUES ('0009C', 'Bloqueador', 'P&G', '90 gramos por unidad', 94, ¢9.520, ¢7.616);
INSERT INTO Productos VALUES ('0009D', 'Desodorante Roll-On', 'P&G', '45 gramos por unidad', 82, ¢1.520, ¢1.216);

--Hogar:
-- H&H
INSERT INTO Productos VALUES ('0010A', 'Espatula', 'H&H', null, 91, ¢2.400, ¢1.120);
INSERT INTO Productos VALUES ('0010B', 'Cuchillo', 'H&H', 'Cucchillo para pan', 83, ¢2.500, ¢2.000);
INSERT INTO Productos VALUES ('0010C', 'Molde', 'H&H', 'Molde de vidrio, reutilizable', 94, ¢9.520, ¢7.616);
INSERT INTO Productos VALUES ('0010D', 'Huevera', 'H&H', null, 82, ¢1.520, ¢1.216);

--Mascota:
-- Colita feliz
INSERT INTO Productos VALUES ('0011A', 'Collares de perro', 'Colita feliz', null, 91, ¢2.400, ¢1.120);
INSERT INTO Productos VALUES ('0011B', 'Concentrado Don Gato', 'Colita feliz', 'Comida para gatos', 83, ¢2.500, ¢3.000);
INSERT INTO Productos VALUES ('0011C', 'Cama grandre', 'Colita feliz', null, 94, ¢9.520, ¢7.616);
INSERT INTO Productos VALUES ('0011D', 'Concentrado Maxidog', 'Colita feliz', 'Comida para perros', 82, ¢2.520, ¢3.216);


--Abarrotes
-- Dos Pinos
INSERT INTO Productos VALUES ('0014A', 'Leche Entera', 'Dos Pinos', 'caja por unidad', 200, ¢1.100, ¢880);
INSERT INTO Productos VALUES ('0014B', 'Yogur Natural', 'Dos Pinos', 'Por unidad', 100, ¢865, ¢692);
INSERT INTO Productos VALUES ('0014C', 'Helado de Vainilla', 'Dos Pinos', 'Por unidad', 47, ¢1.250, ¢1.000);
INSERT INTO Productos VALUES ('0014D', 'Queso Fresco', 'Dos Pinos', '300 gramos por unidad', 60, ¢1.250, ¢1.000);

--Tio Pelon
INSERT INTO Productos VALUES ('0012A', 'Arroz', 'Tio Pelon', 'Unidad de 1 kilogramo', 200, ¢2.535, ¢2.028);
INSERT INTO Productos VALUES ('0012B', 'Frijoles Negos', 'Tio Pelon', 'Unidad de 1 kilogramo', 120, ¢3.100, ¢2.480);
INSERT INTO Productos VALUES ('0012C', 'Frijoles Rojos', 'Tio Pelon', 'Unidad de 1 kilogramo', 200, ¢2.680, ¢2.144);
INSERT INTO Productos VALUES ('0012D', 'Frijoles Blancos', 'Tio Pelon', 'Unidad de 1 kilogramo', 125, ¢1.655, ¢1324);

--Dulceria;
-- Nestlé
INSERT INTO Productos VALUES ('0013A', 'Cereal de Avena', 'Nestlé', 'Creales 200 gramos por unidad', 200, ¢2.535, ¢2.028);
INSERT INTO Productos VALUES ('0013B', 'Leche Condensada', 'Nestlé', 'Leche condensada de 300 gramos por unidad', 120, ¢3.100, ¢2.480);
INSERT INTO Productos VALUES ('0013C', 'Café Instantáneo', 'Nestlé', 'Café instantáneo 200 gramos por unidad', 200, ¢2.680, ¢2.144);
INSERT INTO Productos VALUES ('0013D', 'Chocolate en Polvo', 'Nestlé', 'Chocolate en polvo 150 gramos por unidad', 125, ¢1.655, ¢1324);


--Pedido
INSERT INTO Pedido VALUES (1, '2024-03-28', '2024-03-31', '2024-04-03', 'Entregado', 'Entregado a tiempo', 1);
INSERT INTO Pedido VALUES (2, '2024-03-29', '2024-04-01', '2024-04-04', 'En Espera', 'Esperando confirmación', 2);
INSERT INTO Pedido VALUES (3, '2024-03-30', '2024-04-02', NULL, 'No Entregado', 'No se pudo entregar', 3);
INSERT INTO Pedido VALUES (4, '2024-03-31', '2024-04-03', '2024-04-06', 'Entregado', 'Entrega retrasada', 4);
INSERT INTO Pedido VALUES (5, '2024-04-01', '2024-04-04', NULL, 'En Espera', 'En espera de confirmación', 5);
INSERT INTO Pedido VALUES (6, '2024-04-02', '2024-04-05', '2024-04-08', 'Entregado', 'Entrega retrasada', 6);
INSERT INTO Pedido VALUES (7, '2024-04-03', '2024-04-06', '2024-04-09', 'Entregado', 'Entregado a tiempo', 7);
INSERT INTO Pedido VALUES (8, '2024-04-04', '2024-04-07', NULL, 'Cancelado', 'Pedido cancelado', 8);

--Detalle Pedido

select * from Detalle_Pedido;

--farmacia(Inyect)

-- Insertar datos en Detalle_Pedido para productos de Farmacia
 
INSERT INTO Detalle_Pedido VALUES (1, '0005A', 20, 4125.00);
INSERT INTO Detalle_Pedido VALUES (2, '0015B', 10, 5437.50);
INSERT INTO Detalle_Pedido VALUES (3, '0015C', 30, 4920.00);
INSERT INTO Detalle_Pedido VALUES (4, '0015D', 10, 6000.00);
INSERT INTO Detalle_Pedido VALUES (5, '0050A', 20, 2700.00);
INSERT INTO Detalle_Pedido VALUES (6, '0050B', 10, 7200.00);
INSERT INTO Detalle_Pedido VALUES (7, '0050C', 40, 9450.00);
INSERT INTO Detalle_Pedido VALUES (8, '0050D', 20, 5550.00);
INSERT INTO Detalle_Pedido VALUES (9, '0049A', 10, 4125.00);
INSERT INTO Detalle_Pedido VALUES (0, '0049B', 20, 5437.50);


-- licorera(Licor A.C)

INSERT INTO Detalle_Pedido VALUES (1, '0005B', 2, 150000.00);
INSERT INTO Detalle_Pedido VALUES (2, '0005C', 3, 90000.00);
INSERT INTO Detalle_Pedido VALUES (3, '0005D', 1, 120000.00);

Select * from Pedido;

--hogar(H&H)

INSERT INTO Detalle_Pedido VALUES (1, '0048A', 2, 8000.00);
INSERT INTO Detalle_Pedido VALUES(1, '0048B', 1, 12000.00);
INSERT INTO Detalle_Pedido VALUES(3, '0048C', 3, 5500.00);
INSERT INTO Detalle_Pedido VALUES(4, '0048D', 1, 9000.00);




--Panaderia
-- Bimbo
INSERT INTO Detalle_Pedido VALUES (1, '0001A', 12, 13.200);
INSERT INTO Detalle_Pedido VALUES (2, '0001B', 15, 22.500);
INSERT INTO Detalle_Pedido VALUES (3, '0001C', 14, 15.400);
INSERT INTO Detalle_Pedido VALUES (4, '0001D', 12, 10.200);

-- Pozuelo
INSERT INTO Detalle_Pedido VALUES (5, '0002A', 12, 14.400);
INSERT INTO Detalle_Pedido VALUES (6, '0002B', 14, 18.900);
INSERT INTO Detalle_Pedido VALUES (7, '0002C', 15, 24.750);
INSERT INTO Detalle_Pedido VALUES (8, '0002D', 15, 9.750);

--Abarrotes
-- Dos Pinos
INSERT INTO Detalle_Pedido VALUES (2, '0003B', 22, 18.030);
INSERT INTO Detalle_Pedido VALUES (3, '0003C', 24, 30.000);
INSERT INTO Detalle_Pedido VALUES (4, '0003D', 15, 18.750);

--Limpieza
-- P&G
INSERT INTO Detalle_Pedido VALUES (2, '0004B', 20, 50.000);
INSERT INTO Detalle_Pedido VALUES (5, '0004C', 15, 142.800);
INSERT INTO Detalle_Pedido VALUES (6, '0004D', 12, 18.240);

--Dulceria
-- Nestlé
INSERT INTO Detalle_Pedido VALUES (4, '0005B', 10, 31.000);
INSERT INTO Detalle_Pedido VALUES (5, '0005C', 15, 40.000);
INSERT INTO Detalle_Pedido VALUES (6, '0005D', 20, 33.100);

--Licorera
-- CocaCola
INSERT INTO Detalle_Pedido VALUES (2, '0007A', 14, 22.428);
INSERT INTO Detalle_Pedido VALUES (2, '0007B', 15, 18.375);
INSERT INTO Detalle_Pedido VALUES (4, '0007C', 20, 22.000);
INSERT INTO Detalle_Pedido VALUES (5, '0007D', 12, 21.900);



--Tablas

--Carniceria
--(Tres Jotas)
INSERT INTO Carniceria (Codigo_Producto, Codigo_Barra, Nombre, Fecha_Vencimiento, Estado, Precio_KG) VALUES
INSERT INTO Detalle_Pedido VALUES('0003B', 1234567, 'Filete de res', '2024-06-30', 'Disponible', 23250.00),
('CP002', 9876543, 'Chuleta de cerdo', '2024-05-20', 'Disponible', 16125.00),
('CP003', 1122334, 'Pollo entero', '2024-05-15', 'Disponible', 9840.00),
('CP004', 3322114, 'Costilla de cordero', '2024-04-25', 'Disponible', 30000.00),
('CP005', 5544332, 'Salchicha fresca', '2024-05-10', 'Disponible', 9750.00),
('CP006', 7788990, 'Carne molida', '2024-06-05', 'Disponible', 21600.00),
('CP007', 9988776, 'Bistec de ternera', '2024-05-28', 'Disponible', 33750.00),
('CP008', 6655443, 'Jamón ahumado', '2024-06-15', 'Disponible', 25650.00);


--Farmacia
--(Inyect)
INSERT INTO Farmacia (Codigo_Producto, Codigo_Barra, Nombre, Fecha_Vencimiento, Estado, Precio) VALUES
('FP001', 1234567, 'Paracetamol 500mg', '2024-06-30', 'Disponible', 4125.00),
('FP002', 9876543, 'Ibuprofeno 400mg', '2024-05-20', 'Disponible', 5437.50),
('FP003', 1122334, 'Omeprazol 20mg', '2024-05-15', 'Disponible', 4920.00),
('FP004', 3322114, 'Amoxicilina 500mg', '2024-04-25', 'Disponible', 6000.00),
('FP005', 5544332, 'Loratadina 10mg', '2024-05-10', 'Disponible', 2700.00),
('FP006', 7788990, 'Vitamina C 500mg', '2024-06-05', 'Disponible', 7200.00),
('FP007', 9988776, 'Diazepam 5mg', '2024-05-28', 'Disponible', 9450.00),
('FP008', 6655443, 'Aspirina 100mg', '2024-06-15', 'Disponible', 5550.00);



--Licorera
--(Licor A.C,Coca Cola)

INSERT INTO Licorera (Codigo_Producto, Codigo_Barra, Nombre, Cantidad_ML, Fecha_Vencimiento, Precio, Estado) VALUES
('LP001', 1234567, 'Whisky Escocés', '750 mL', '2025-12-31', 150000.00, 'Disponible'),
('LP002', 9876543, 'Vodka Ruso', '700 mL', '2024-12-31', 90000.00, 'Disponible'),
('LP003', 1122334, 'Ron Añejo', '750 mL', '2026-06-30', 120000.00, 'Disponible'),
('LP004', 3322114, 'Gin Premium', '700 mL', '2025-09-30', 105000.00, 'Disponible'),
('LP005', 5544332, 'Tequila Reposado', '750 mL', '2024-12-31', 135000.00, 'Disponible'),
('LP006', 7788990, 'Brandy XO', '700 mL', '2026-03-31', 180000.00, 'Disponible'),
('LP007', 9988776, 'Licor de Café', '750 mL', '2025-06-30', 62500.00, 'Disponible'),
('LP008', 6655443, 'Champán Brut', '750 mL', '2027-12-31', 165000.00, 'Disponible');


 --Panaderia
 --(Bimbo)

INSERT INTO Panaderia (Codigo_Producto, Codigo_Barra, Nombre, Fecha_Vencimiento, Precio, Estado) VALUES
('PP001', 1234567, 'Pan blanco', '2024-04-20', 1875.00, 'Disponible'),
('PP002', 9876543, 'Pan integral', '2024-04-18', 2250.00, 'Disponible'),
('PP003', 1122334, 'Croissant', '2024-04-22', 2063.00, 'Disponible'),
('PP004', 3322114, 'Bolillo', '2024-04-19', 1125.00, 'Disponible'),
('PP005', 5544332, 'Rosca de reyes', '2024-04-25', 7500.00, 'Disponible'),
('PP006', 7788990, 'Pan de ajo', '2024-04-21', 3000.00, 'Disponible'),
('PP007', 9988776, 'Tarta de frutas', '2024-04-23', 6375.00, 'Disponible'),
('PP008', 6655443, 'Palmera de chocolate', '2024-04-24', 4125.00, 'Disponible');


--Limpieza
--(P&G)

INSERT INTO Limpieza (Codigo_Producto, Codigo_Barra, Nombre, Fecha_Vencimiento, Precio, Cantidad_KG, Cantidad_ML, Estado) VALUES
('LP001', 1234567, 'Detergente líquido', '2025-06-30', 4500.00, NULL, 1500.00, 'Disponible'),
('LP002', 9876543, 'Limpiavidrios', '2024-05-20', 3200.00, NULL, 1000.00, 'Disponible'),
('LP003', 1122334, 'Desinfectante multiusos', '2024-05-15', 3800.00, NULL, 750.00, 'Disponible'),
('LP004', 3322114, 'Bolsas de basura', '2024-04-25', 2500.00, 1.5, NULL, 'Disponible'),
('LP005', 5544332, 'Esponjas abrasivas', '2024-05-10', 1200.00, 0.2, NULL, 'Disponible'),
('LP006', 7788990, 'Jabón en polvo', '2024-06-05', 4200.00, 2.0, NULL, 'Disponible'),
('LP007', 9988776, 'Toallas de papel', '2024-05-28', 1800.00, NULL, 300.00, 'Disponible'),
('LP008', 6655443, 'Desodorante ambiental', '2024-06-15', 2900.00, NULL, 250.00, 'Disponible');

-- Hogar
--(H&H)

INSERT INTO Hogar (Codigo_Producto, Codigo_Barra, Nombre, Precio, Estado) VALUES
('HG001', 1234567, 'Lámpara LED', 8000.00, 'Disponible'),
('HG002', 9876543, 'Almohada de plumas', 12000.00, 'Disponible'),
('HG003', 1122334, 'Cubiertos de acero inoxidable', 5500.00, 'Disponible'),
('HG004', 3322114, 'Juego de toallas', 9000.00, 'Disponible'),
('HG005', 5544332, 'Cortinas opacas', 15000.00, 'Disponible'),
('HG006', 7788990, 'Set de ollas antiadherentes', 18000.00, 'Disponible'),
('HG007', 9988776, 'Mesa plegable', 10000.00, 'Disponible'),
('HG008', 6655443, 'Organizador de zapatos', 3500.00, 'Disponible');

--Mascota
--(Colita feliz)

INSERT INTO Mascota (Codigo_Producto, Codigo_Barra, Nombre, Precio, Estado, Cantidad_KG) VALUES
('MP001', 1234567, 'Alimento para perros', 6500.00, 'Disponible', 2.5),
('MP002', 9876543, 'Arena para gatos', 4500.00, 'Disponible', NULL),
('MP003', 1122334, 'Juguete masticable para perros', 3200.00, 'Disponible', 0.2),
('MP004', 3322114, 'Collar antipulgas', 5500.00, 'Disponible', NULL),
('MP005', 5544332, 'Comedero automático', 8500.00, 'Disponible', NULL),
('MP006', 7788990, 'Cama para mascotas', 12000.00, 'Disponible', NULL),
('MP007', 9988776, 'Correa extensible', 4000.00, 'Disponible', NULL),
('MP008', 6655443, 'Snacks para gatos', 2800.00, 'Disponible', 0.1);

--Abarrotes
--(Dos Pinos,Tío Pelón)

INSERT INTO Abarrotes (Codigo_Producto, Codigo_Barra, Nombre, Precio, Estado, Cantidad_KG, Cantidad_ML) VALUES
('AB001', 1234567, 'Arroz blanco', 2500.00, 'Disponible', 1.0, NULL),
('AB002', 9876543, 'Azúcar blanca', 2200.00, 'Disponible', 1.0, NULL),
('AB003', 1122334, 'Aceite de cocina', 3800.00, 'Disponible', NULL, 750.00),
('AB004', 3322114, 'Café molido', 4200.00, 'Disponible', 0.5, NULL),
('AB005', 5544332, 'Harina de trigo', 2300.00, 'Disponible', 1.0, NULL),
('AB006', 7788990, 'Pasta alimenticia', 1800.00, 'Disponible', 0.5, NULL),
('AB007', 9988776, 'Consomé de pollo', 1500.00, 'Disponible', NULL, 500.00),
('AB008', 6655443, 'Salsa de tomate', 2600.00, 'Disponible', NULL, 500.00);


--Dulceria
--(Néstle)

INSERT INTO Dulceria (Codigo_Producto, Codigo_Barra, Nombre, Precio) VALUES
('DL001', 1234567, 'Chocolate con leche', 1500.00),
('DL002', 9876543, 'Galletas de vainilla', 1200.00),
('DL003', 1122334, 'Chicles de menta', 500.00),
('DL004', 3322114, 'Paletas de frutas', 400.00),
('DL005', 5544332, 'Caramelos surtidos', 750.00),
('DL006', 7788990, 'Turrones de maní', 1100.00),
('DL007', 9988776, 'Chocolates rellenos', 1800.00),
('DL008', 6655443, 'Gomitas de ositos', 650.00);



--Fruteria
--3 Piñas A.C
INSERT INTO Fruteria VALUES ('0009A', 1, 'Manzana', '2024-04-25', 'En stock', 500, 1500);
INSERT INTO Fruteria VALUES ('0009B', 2, 'Plátano', '2024-10-08', 'Agotado', 60, 1200);
INSERT INTO Fruteria VALUES ('0009C', 3, 'Naranja', '2024-07-03', 'En stock', 850, 1300);
INSERT INTO Fruteria VALUES ('0009D', 45, 'Papaya', '2024-06-30', 'Agotado', 1.200, 1800);


--Verdureria
--Aire Fresco
INSERT INTO Verdureria VALUES ('0010A', 1134, 'Tomates', '2024-01-02', 'En stock', 500, 1.170);
INSERT INTO Verdureria VALUES ('0010B', 2245, 'Zanahorias', '2024-04-21', 'En stock', 120, 485);
INSERT INTO Verdureria VALUES ('0010C', 3455, 'Pepinos', '2024-05-30', 'En stock', 250, 840);
INSERT INTO Verdureria VALUES ('0010D', 4577, 'Remolacha', '2024-06-21', 'Agotado', 480, 1.200);



--8.Realizar un total de 10 script de eliminación y actualización de datos, (update, delete) con condiciones, 
--sobre las entidades del proyecto, demostrando el dominio de elementos DML.

UPDATE Empleado
SET Salario = Salario * 1.1  --Aumenta el salario en un  10%
WHERE Puesto = 'Manager';    

DELETE FROM Cliente
WHERE Codigo_Tarjeta_Puntos NOT IN (SELECT Codigo_Tarjeta_Puntos FROM Metodo_Pago);

SELECT P.Codigo_Producto, P.Nombre AS Nombre_Producto, P.Precio_Venta, Pr.Nombre_Proveedor
FROM Producto P
JOIN Proveedor Pr ON P.Proveedor = Pr.Nombre_Proveedor;

INSERT INTO Pedido (Codigo_Pedido, Fecha_Pedido, Fecha_Esperada, Estado, ID_Proveedor)
VALUES (9, '2024-03-29', '2024-04-05', 'En Espera', 5);

--Actualizar el nombre de Piña a Piña madura
UPDATE Fruteria
SET Nombre = 'Piña Madura'
WHERE Codigo_Barra = '0009E';

-- Actualizar el estado de los pedidos que están "En Espera" y su fecha de entrega es NULL a "Cancelado"
UPDATE Pedido
SET Estado = 'Cancelado', Comentarios = 'Pedido cancelado'
WHERE Estado = 'En Espera' AND Fecha_Entrega IS NULL;

-- Eliminar los pedidos que están "No Entregado" y su fecha de entrega prevista ya ha pasado
DELETE FROM Pedido
WHERE Estado = 'No Entregado' AND Fecha_Esperada < GETDATE();

--Insertar un producto nuevo dentro de fruteria
INSERT INTO Fruteria VALUES ('0009G', 9675, 'Mandarina', '2024-06-22', 'En stock', 550, 1.000);

--Actualizar el precio de los productos de Limpieza con un descuento del 15%
UPDATE Limpieza
SET Precio = Precio * 0.85  -- Aplicar un descuento del 15%
WHERE Estado = 'Disponible';

--Eliminar productos de Mascota que no tienen cantidad en KG especificada
DELETE FROM Mascota
WHERE Cantidad_KG IS NULL;




--9. Debe crear 18 consultas para reportes.

-- 1. Número de empleados por departamento 
SELECT Puesto, COUNT(*) AS Num_Empleados
FROM Empleado
GROUP BY Puesto;

--2.Puntos totales ganados por cliente 
SELECT Cedula, Nombre, Apellido1, SUM(Puntos) AS Total_Puntos
FROM Cliente
GROUP BY Cedula, Nombre, Apellido1;

--3.Salarios promedio por departamento
SELECT Puesto, AVG(CONVERT(NUMERIC(15,2), Salario)) AS Avg_Salario
FROM Empleado
GROUP BY Puesto;

--4.Ventas totales por proveedor
SELECT pr.Nombre_Proveedor, SUM(dp.Cantidad * dp.Precio_Unidad) AS Total_Ventas
FROM Detalle_Pedido dp
JOIN Pedido pe ON dp.Codigo_Pedido = pe.Codigo_Pedido
JOIN Proveedor pr ON pe.ID_Proveedor = pr.ID_Proveedor
GROUP BY pr.Nombre_Proveedor;

--5.Total de puntos ganados por año para un cliente específico :
SELECT YEAR(mp.Fecha_Pago) AS Year, SUM(c.Puntos) AS Total_Puntos_Obtenidos
FROM Cliente c
JOIN Metodo_Pago mp ON c.Codigo_Tarjeta_Puntos = mp.Codigo_Tarjeta_Puntos
WHERE c.Cedula = 208340266 
GROUP BY YEAR(mp.Fecha_Pago);

--6. Consultar los empleados que son responsables de sección:
SELECT * FROM Empleado WHERE Puesto = 'Responsable de seccion';

--7.Obtener el detalle de los productos vendidos en un pedido específico:
SELECT DP.*, P.Descripcion, P.Precio_Venta 
FROM Detalle_Pedido DP
JOIN Producto P ON DP.Codigo_Producto = P.Codigo_Producto
WHERE DP.Cantidad = '0002A';--'número_del_pedido'	


--8. Calcular el total vendido por cada método de pago:
SELECT MP.Forma_Pago, SUM(DP.Cantidad * DP.Precio_Unidad) AS Total_Vendido
FROM Metodo_Pago MP
JOIN Pedido PE ON MP.ID_Transaccion = PE.Codigo_Pedido
JOIN Detalle_Pedido DP ON PE.Codigo_Pedido = DP.Codigo_Pedido
GROUP BY MP.Forma_Pago;

--9.Verificar el estado actual de todos los pedidos:
SELECT Codigo_Pedido, Estado
FROM Pedido;

--10.Consulta para obtener el nombre completo y el salario
--de los empleados que son responsables de sección y que trabajan en la frutería:
SELECT CONCAT(e.Nombre, ' ', e.Apellido1, ' ', e.Apellido2) AS Nombre_Completo, e.Salario
FROM Empleado e
WHERE e.Puesto = 'Responsable de seccion' AND e.Seccion = 'Fruteria';

-- 11.Consulta para obtener el nombre del cliente, el monto total de sus compras y el método de 
--pago utilizado por cada cliente:
SELECT CONCAT(C.Nombre, ' ', C.Apellido1, ' ', C.Apellido2) AS Nombre_Cliente, SUM(DP.Cantidad * DP.Precio_Unidad) AS Monto_Total, MP.Forma_Pago
FROM Cliente C
JOIN Pedido P ON C.Cedula = P.Codigo_Pedido
JOIN Metodo_Pago MP ON P.Codigo_Pedido = MP.ID_Transaccion
JOIN Detalle_Pedido DP ON P.Codigo_Pedido = DP.Codigo_Pedido
GROUP BY C.Cedula, MP.Forma_Pago;


--12. Consulta para obtener el nombre del proveedor y el total de productos suministrados
SELECT p.Nombre_Proveedor, COUNT(*) AS Total_Productos_Suministrados
FROM Producto pr
JOIN Proveedor p ON pr.Proveedor = p.ID_Proveedor
GROUP BY p.Nombre_Proveedor;

select * from Producto

--13. Consulta para obtener el número total de pedidos por estado
SELECT Estado, COUNT(*) AS Num_Pedidos
FROM Pedido
GROUP BY Estado;


--14. Consulta para obtener el total de ventas por categoría de producto

SELECT p.Nombre, SUM(dp.Cantidad * dp.Precio_Unidad) AS Total_Ventas
FROM Detalle_Pedido dp
JOIN Producto p ON dp.Codigo_Producto = p.Codigo_Producto
GROUP BY p.Nombre;


SELECT *FROM Detalle_Pedido

--15. Consulta para obtener el total de puntos ganados por cada cliente en el último año

SELECT c.Cedula, c.Nombre, c.Apellido1, SUM(c.Puntos) AS Total_Puntos_Ultimo_Anio
FROM Cliente c
JOIN Metodo_Pago mp ON c.Codigo_Tarjeta_Puntos = mp.Codigo_Tarjeta_Puntos
WHERE YEAR(mp.Fecha_Pago) = YEAR(GETDATE()) - 1
GROUP BY c.Cedula, c.Nombre, c.Apellido1;



--16. Consulta para obtener los productos con menos de 10 unidades en stock

SELECT Codigo_Producto, Nombre, Cantidad_En_Stock
FROM Producto
WHERE Cantidad_En_Stock < 10;


--17. Consulta para obtener el total de ventas por empleado

SELECT e.Nombre, e.Apellido1, SUM(dp.Cantidad * dp.Precio_Unidad) AS Total_Ventas
FROM Empleado e
JOIN Pedido p ON e.ID_Empleado = p.ID_Proveedor
JOIN Detalle_Pedido dp ON p.Codigo_Pedido = dp.Codigo_Pedido
GROUP BY e.Nombre, e.Apellido1;


--18. Consulta para obtener el total de ventas por mes y año

SELECT YEAR(pe.Fecha_Pedido) AS Year, MONTH(pe.Fecha_Pedido) AS Month, SUM(dp.Cantidad * dp.Precio_Unidad) AS Total_Ventas
FROM Detalle_Pedido dp
JOIN Pedido pe ON dp.Codigo_Pedido = pe.Codigo_Pedido
GROUP BY YEAR(pe.Fecha_Pedido), MONTH(pe.Fecha_Pedido)
ORDER BY Year, Month;



