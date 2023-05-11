CREATE TABLE [dbo].[Payment] (
    [PaymentId]      VARCHAR (50) NOT NULL,
    [PaymentMethod]  VARCHAR (50) NULL,
    [CardNum]        INT NULL,
    [CardCvv]        INT NULL,
    [CardHolderName] VARCHAR (50) NULL,
    [ExpMonth]       VARCHAR (50) NULL,
    [ExpYear]        VARCHAR (50) NULL,
    [UserId]         INT          NOT NULL,
    [OrderId]        INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([PaymentId] ASC)
);

INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [ExpMonth], [ExpYear]) VALUES (N'00001', N'Debit', 1234567812345678, 1234, N'Ng Zhi Chin', N'May', 2023, 1, 1)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [ExpMonth], [ExpYear]) VALUES (N'00002', N'Credit', 3133567812345678, 1224, N'Leong Voon Hui', N'February', 2024, 1, 2)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [ExpMonth], [ExpYear]) VALUES (N'00003', N'Credit', 7224577812345978, 2234, N'Lim Sze Yi', N'April', 2023, 1, 3)
