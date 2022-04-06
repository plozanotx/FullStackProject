CREATE TABLE [pizza].[Pizzas]
(
	[Id]			INT PRIMARY KEY IDENTITY(1,1),
	[Name]			VARCHAR(128) UNIQUE NOT NULL,
	[Description]	VARCHAR(512) NULL,
	[RetailPrice]	MONEY
)
