CREATE TABLE [dbo].[Book] (
    [BookID]        NVARCHAR(10) NOT NULL,
	  [UserID]        INT NOT NULL,
    [StartBookDate] DATETIME      NULL,
    [EndBookDate]   DATETIME      NULL,
    [Qty]           INT NOT NULL DEFAULT(1),
    [RoomId]        INT NOT NULL,
    [OrderId]       INT NOT NULL,
    CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED ([BookID] ASC)
);

INSERT INTO Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) VALUES ('B000001', '000001', '16/01/2023 08:00:00', '24/01/2023 12:00:00', 1, 1, 1);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000002', '000002', '20/07/2023 10:00:00', '27/07/2023 14:00:00', 2, 2, 1);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000003', '000003', '23/04/2023 09:00:00', '26/04/2023 12:30:00', 3, 3, 1);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000004', '000004', '02/03/2023 10:30:00', '05/03/2023 14:15:00', 4, 2, 2);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000005', '000005', '22/04/2023 08:30:00', '24/04/2023 13:00:00', 5, 5, 2);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000006', '000006', '05/05/2023 11:00:00', '08/05/2023 12:45:00', 6, 4, 3);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000007', '000007', '29/06/2023 10:15:00', '30/06/2023 13:15:00', 4, 5, 3);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000008', '000008', '11/03/2023 08:25:00', '13/03/2023 13:30:00', 2, 3, 4);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000009', '000009', '20/09/2023 11:30:00', '22/09/2023 14:00:00', 3, 2, 4);
insert into Book (BookID, UserID, StartBookDate, EndBookDate, Qty, RoomId, OrderId) values ('B000010', '000010', '09/02/2023 09:45:00', '11/02/2023 13:45:00', 1, 6, 5);
