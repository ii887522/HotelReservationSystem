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

INSERT INTO Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) VALUES ('B000001', '000001', 'adodsworth2', '16/01/2023 08:00:00', '24/01/2023 12:00:00', 'deluxe', 'Paid');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000002', '000002', 'tskillings0', '20/07/2023 10:00:00', '27/07/2023 14:00:00', 'twin', 'Reserve');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000003', '000003', 'kselliman1', '23/04/2023 09:00:00', '26/04/2023 12:30:00', 'single', 'Paid');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000004', '000004', 'npithcock3', '02/03/2023 10:30:00', '05/03/2023 14:15:00', 'deluxe', 'Paid');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000005', '000005', 'smitskevich4', '22/04/2023 08:30:00', '24/04/2023 13:00:00', 'triple', 'Paid');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000006', '000006', 'mdungate5', '05/05/2023 11:00:00', '08/05/2023 12:45:00', 'deluxe', 'Reserve');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000007', '000007', 'lainslie6', '29/06/2023 10:15:00', '30/06/2023 13:15:00', 'double', 'Reserve');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000008', '000008', 'laslum7', '11/03/2023 08:25:00', '13/03/2023 13:30:00', 'deluxe', 'Paid');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000009', '000009', 'hminger8', '20/09/2023 11:30:00', '22/09/2023 14:00:00', 'double double', 'Reserve');
insert into Book (BookID, UserID, Username, StartBookDate, EndBookDate, RoomType, Status) values ('B000010', '000010', 'tmckevany9', '09/02/2023 09:45:00', '11/02/2023 13:45:00', 'twin', 'Paid');

