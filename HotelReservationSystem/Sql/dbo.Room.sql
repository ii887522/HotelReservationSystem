DROP TABLE [dbo].[Room];
CREATE TABLE [dbo].[Room] (
    [RoomId]       INT            NOT NULL,
    [RoomType]     VARCHAR (50)   NOT NULL,
    [RoomDesc]     VARCHAR (500)  NOT NULL,
    [AvailableQty] INT            NOT NULL,
    [TotalQty]     INT            NOT NULL,
    [MaxAdults]    INT            NULL,
    [MaxChildren]  INT            NULL,
    [Price]        DECIMAL (5, 2) NOT NULL,
    [Image]        NCHAR (100)    NULL,
    PRIMARY KEY CLUSTERED ([RoomId] ASC)
);

-- insert values
INSERT INTO [dbo].[Room] ([RoomId], [RoomType], [RoomDesc], [AvailableQty], [TotalQty], [MaxAdults], [MaxChildren], [Price], [Image]) VALUES (1, N'Single Room', N'There is a room available that is suitable for solo travelers.', 5, 5, 2, 1, CAST(199.99 AS Decimal(5, 2)), N'singleRoom.jpg                                                                                      ')
INSERT INTO [dbo].[Room] ([RoomId], [RoomType], [RoomDesc], [AvailableQty], [TotalQty], [MaxAdults], [MaxChildren], [Price], [Image]) VALUES (2, N'Double Room', N'The room is a good choice for couples or solo travelers who prefer a bigger bed.', 10, 10, 4, 2, CAST(299.99 AS Decimal(5, 2)), N'doubleRoom.jpg                                                                                      ')
INSERT INTO [dbo].[Room] ([RoomId], [RoomType], [RoomDesc], [AvailableQty], [TotalQty], [MaxAdults], [MaxChildren], [Price], [Image]) VALUES (3, N'Triple Room', N'The room is ideal for small families or groups of three.', 10, 10, 6, 3, CAST(399.99 AS Decimal(5, 2)), N'tripleRoom.jpg                                                                                      ')
INSERT INTO [dbo].[Room] ([RoomId], [RoomType], [RoomDesc], [AvailableQty], [TotalQty], [MaxAdults], [MaxChildren], [Price], [Image]) VALUES (4, N'Deluxe Room', N'The Deluxe room is a spacious and luxurious accommodation with extra amenities, including a mini-fridge, mini safe, and high-end toiletries.', 5, 5, 3, 2, CAST(388.00 AS Decimal(5, 2)), N'deluxeRoom.jpg                                                                                      ')
INSERT INTO [dbo].[Room] ([RoomId], [RoomType], [RoomDesc], [AvailableQty], [TotalQty], [MaxAdults], [MaxChildren], [Price], [Image]) VALUES (5, N'Double-Double Room (Quad Room)', N'If you''re traveling with family or friends and need more sleeping space, this room type is a great option.', 15, 15, 4, 2, CAST(499.99 AS Decimal(5, 2)), N'doubleDoubleRoom.jpg                                                                                ')
INSERT INTO [dbo].[Room] ([RoomId], [RoomType], [RoomDesc], [AvailableQty], [TotalQty], [MaxAdults], [MaxChildren], [Price], [Image]) VALUES (6, N'Twin Room', N'This type of room is ideal for those who would like to sleep in separate beds, such as friends or family members.', 10, 10, 3, 1, CAST(259.99 AS Decimal(5, 2)), N'twinRoom.jpg                                                                                        ')
