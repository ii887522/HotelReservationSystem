CREATE TABLE [dbo].[User] (
    [Id]                INT              NOT NULL IDENTITY(1, 1),
    [MobilePhone]       NVARCHAR (13)    NULL,
    [EmailOtp]          NCHAR (6)        NULL,
    [PhoneOtp]          NCHAR (6)        NULL,
    [IsActive]          BIT              DEFAULT ((0)) NOT NULL,
    [ProfilePicUrl]     NVARCHAR (MAX)   NULL,
    [EmailOtpUpdatedAt] DATETIME         NULL,
    [PhoneOtpUpdatedAt] DATETIME         NULL,
    [RtcCoinEarned]     BIGINT           DEFAULT ((0)) NOT NULL,
    [RtcCoin]           BIGINT           DEFAULT ((0)) NOT NULL,
    [MembershipId]      UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_To_aspnet_Membership] FOREIGN KEY ([MembershipId]) REFERENCES [dbo].[aspnet_Membership] ([UserId]),
    CONSTRAINT [FK_User_To_aspnet_Users] FOREIGN KEY ([MembershipId]) REFERENCES [dbo].[aspnet_Users] ([UserId])
);

