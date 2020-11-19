/* Little Bobby Tables Attempt at Modeling*/

CREATE TABLE dbo.Customer
( customerId BIGINT IDENTITY(1,1)
, firstName NVARCHAR(50) NOT NULL
, lastName NVARCHAR(50) NOT NULL 
, phoneNumber VARCHAR(20) NOT NULL
, emalAddress NVARCHAR(50) NOT NULL
, CONSTRAINT PK_Customer_customerId PRIMARY KEY CLUSTERED (customerId)
);
GO

CREATE TABLE dbo.Reservation
( reservationId TINYINT IDENTITY(1,1)
, customerId BIGINT NOT NULL
, roomNumber INT NOT NULL
, roomType VARCHAR(20) NOT NULL
, reservationStart DATE NOT NULL
, reservationEnd DATETIME
, is_active BIT NOT NULL
, CONSTRAINT PK_Reservation_reservationId PRIMARY KEY CLUSTERED (reservationId)
);
GO

ALTER TABLE dbo.Reservation WITH CHECK ADD CONSTRAINT FK_Customer_customerId FOREIGN KEY(customerId)
REFERENCES dbo.Customer (customerId);
GO

CREATE NONCLUSTERED INDEX IX_Reservation_reservationStart_reservationEnd_inc ON dbo.Reservation (reservationEnd, reservationStart) INCLUDE (is_active);
GO