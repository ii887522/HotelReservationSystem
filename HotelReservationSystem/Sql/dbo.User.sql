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

SET IDENTITY_INSERT [dbo].[User] ON
INSERT INTO [dbo].[User] ([Id], [MobilePhone], [EmailOtp], [PhoneOtp], [IsActive], [ProfilePicUrl], [EmailOtpUpdatedAt], [PhoneOtpUpdatedAt], [RtcCoinEarned], [RtcCoin], [MembershipId]) VALUES (1, N'', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, N'239c67c7-6ed3-4205-b1a2-76dcaf317572')
INSERT INTO [dbo].[User] ([Id], [MobilePhone], [EmailOtp], [PhoneOtp], [IsActive], [ProfilePicUrl], [EmailOtpUpdatedAt], [PhoneOtpUpdatedAt], [RtcCoinEarned], [RtcCoin], [MembershipId]) VALUES (2, N'+60178715867', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, N'e3a6081e-50c4-44b1-a163-af43df4117b2')
INSERT INTO [dbo].[User] ([Id], [MobilePhone], [EmailOtp], [PhoneOtp], [IsActive], [ProfilePicUrl], [EmailOtpUpdatedAt], [PhoneOtpUpdatedAt], [RtcCoinEarned], [RtcCoin], [MembershipId]) VALUES (3, N'+60149302328', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, N'81050c6e-b879-4930-841b-51139a015da8')
INSERT INTO [dbo].[User] ([Id], [MobilePhone], [EmailOtp], [PhoneOtp], [IsActive], [ProfilePicUrl], [EmailOtpUpdatedAt], [PhoneOtpUpdatedAt], [RtcCoinEarned], [RtcCoin], [MembershipId]) VALUES (4, N'', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, N'839f47d4-f4d7-4014-9141-bdf27cadb313')
INSERT INTO [dbo].[User] ([Id], [MobilePhone], [EmailOtp], [PhoneOtp], [IsActive], [ProfilePicUrl], [EmailOtpUpdatedAt], [PhoneOtpUpdatedAt], [RtcCoinEarned], [RtcCoin], [MembershipId]) VALUES (5, N'+60104221157', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, N'83c05b6e-99bf-43a0-833a-2dcc6e635fb7')
SET IDENTITY_INSERT [dbo].[User] OFF
