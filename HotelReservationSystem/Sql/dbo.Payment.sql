CREATE TABLE [dbo].[Payment] (
    [PaymentId]      VARCHAR (50) NOT NULL,
    [PaymentMethod]  VARCHAR (50) NULL,
    [CardNum]        VARCHAR (50) NULL,
    [CardCvv]        VARCHAR (50) NULL,
    [CardHolderName] VARCHAR (50) NULL,
    [CardExpMonth]   VARCHAR (50) NULL,
    [CardExpYear]    VARCHAR (50) NULL,
    [UserId]         INT          NOT NULL,
    [OrderId]        INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([PaymentId] ASC)
);


INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00001', N'Debit', N'1234567812345678', N'1234', N'Ng Zhi Chin', N'May', N'2023', 1, 1)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00002', N'Credit', N'3133567812345678', N'1224', N'Leong Voon Hui', N'February', N'2024', 1, 2)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00003', N'Credit', N'7224577812345978', N'2234', N'Lim Sze Yi', N'April', N'2023', 1, 3)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00004', N'Debit', N'6233267811145678', N'4431', N'Khoo Chyi Ze', N'August', N'2026', 1, 4)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00005', N'Credit', N'2890567812665678', N'6766', N'Lee Min Xuan', N'January', N'2025', 2, 5)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00006', N'Credit', N'2234567812345678', N'5890', N'Wong Zhi Wei', N'November', N'2024', 3, 6)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00007', N'Debit', N'9234567812345678', N'1298', N'Wong Wai Zhong', N'November', N'2027', 3, 7)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00008', N'Credit', N'3234567812345678', N'4901', N'Ng Wei Hao', N'October', N'2031', 4, 8)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00009', N'Credit', N'1134562813345678', N'5116', N'Teoh Seng Tian', N'July', N'2028', 5, 9)
INSERT INTO [dbo].[Payment] ([PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [CardExpMonth], [CardExpYear]) VALUES (N'00010', N'Debit', N'1434537812245678', N'7720', N'Ding Zhi Ling', N'June', N'2024', 5, 9)
