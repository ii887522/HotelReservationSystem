CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [MobilePhone] NVARCHAR(13) NULL, 
    [EmailOtp] NCHAR(6) NULL, 
    [PhoneOtp] NCHAR(6) NULL, 
    [IsActive] BIT NOT NULL DEFAULT 0, 
    [ProfilePicUrl] NVARCHAR(MAX) NULL, 
    [EmailOtpUpdatedAt] DATETIME NULL, 
    [PhoneOtpUpdatedAt] DATETIME NULL, 
    [RtcCoinEarned] BIGINT NOT NULL DEFAULT 0, 
    [RtcCoin] BIGINT NOT NULL DEFAULT 0
)
