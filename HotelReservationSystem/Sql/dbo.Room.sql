CREATE TABLE [dbo].[Room] (
    [RoomId]           INT            NOT NULL,
    [RoomType]         VARCHAR (50)   NOT NULL,
    [RoomDesc]         VARCHAR (200)  NOT NULL,
    [AvailableQty]     INT            NOT NULL,
    [TotalQty]         INT            NOT NULL,
    [MaxAdults]        INT            NULL,
    [MaxChildren]      INT            NULL,
    [Price]            DECIMAL (5, 2) NOT NULL,
    [Image]            NCHAR (100)    NULL,
    PRIMARY KEY CLUSTERED ([RoomId] ASC)
);
