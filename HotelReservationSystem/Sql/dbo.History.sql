CREATE TABLE [dbo].[History]
(
	[UserId] INT NOT NULL , 
    [RoomId] INT NOT NULL, 
    PRIMARY KEY ([UserId], [RoomId]), 
    CONSTRAINT [FK_History_To_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_History_To_Room] FOREIGN KEY ([RoomId]) REFERENCES [Room]([RoomId]),
)
