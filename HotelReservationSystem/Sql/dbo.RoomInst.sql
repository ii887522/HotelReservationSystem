CREATE TABLE [dbo].[RoomInst] (
    [Name]      VARCHAR(10)    NOT NULL,
    [Available] BIT            NOT NULL DEFAULT(1),
    [RoomId]    INT            NOT NULL,
    [BookId]    NVARCHAR(10)   NULL,
    PRIMARY KEY CLUSTERED ([Name] ASC)
);
