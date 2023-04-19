CREATE TABLE [dbo].[Order]
(
	[Id] INT NOT NULL PRIMARY KEY,
  [Status] NVARCHAR (15) NOT NULL DEFAULT(N'reserved'),
)
