CREATE TABLE [dbo].[Room] (
    [RoomId]           INT            NOT NULL,
    [RoomName]         VARCHAR (50)   NULL,
    [RoomLocation]     VARCHAR (50)   NULL,
    [NoRooms]          INT            NULL,
    [MaxAdults]        INT            NULL,
    [MaxChildren]      INT            NULL,
    [PricePerAdult]    DECIMAL (5, 2) NULL,
    [PricePerChildren] DECIMAL (5, 2) NULL,
    [Image]            NCHAR (100)    NULL,
    PRIMARY KEY CLUSTERED ([RoomId] ASC)
);

