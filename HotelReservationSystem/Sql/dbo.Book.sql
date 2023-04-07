CREATE TABLE [dbo].[Book] (
    [BookID]        NVARCHAR(10) NOT NULL,
	[UserID]        INT NOT NULL,
    [Username]      NVARCHAR (40) NULL,
    [StartBookDate] DATETIME      NULL,
    [EndBookDate]   DATETIME      NULL,
    [RoomType]      NVARCHAR (30) NULL,
    [Status]        NVARCHAR (15) NULL,
    CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED ([BookID] ASC)
);

