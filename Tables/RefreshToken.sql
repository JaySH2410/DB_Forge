CREATE TABLE [dbo].[RefreshToken]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Uuid] UNIQUEIDENTIFIER NOT NULL, 
    [UserId] INT NOT NULL, 
    [TokenHash] NVARCHAR(64) NOT NULL, 
    [ExpiresAt] DATETIMEOFFSET NOT NULL,
    [ReplacedByTokenHash] NVARCHAR(64) NULL, 
    [RevokedAt] DATETIMEOFFSET NULL, 
    [RevokedReason] NVARCHAR(500) NULL, 
    [CreatedAt] DATETIMEOFFSET NOT NULL, 
    [CreatedBy] INT NULL, 
    [UpdatedAt] DATETIMEOFFSET NULL, 
    [UpdatedBy] INT NULL, 
    [DeletedAt] DATETIMEOFFSET NULL ,
    [DeletedBy] INT NULL, 
    CONSTRAINT [FK_RefreshToken_User_UserId] FOREIGN KEY (UserId) REFERENCES [User](id)
)

GO

CREATE NONCLUSTERED INDEX [IX_RefreshToken_UserId] ON [dbo].[RefreshToken] ([UserId])

GO

CREATE NONCLUSTERED INDEX [IX_RefreshToken_TokenHash] ON [dbo].[RefreshToken] ([TokenHash])


