CREATE TABLE [dbo].PasswordResetToken
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Uuid] UNIQUEIDENTIFIER NOT NULL, 
    [UserId] INT NOT NULL, 
    [TokenHash] NVARCHAR(64) NOT NULL, 
    [ExpiresAt] DATETIMEOFFSET NOT NULL,
    [UsedAt] DATETIMEOFFSET NULL, 
    [CreatedAt] DATETIMEOFFSET NOT NULL, 
    [CreatedBy] INT NULL, 
    [UpdatedAt] DATETIMEOFFSET NULL, 
    [UpdatedBy] INT NULL, 
    [DeletedAt] DATETIMEOFFSET NULL ,
    [DeletedBy] INT NULL, 
    CONSTRAINT [FK_PasswordResetToken_User_UserId] FOREIGN KEY (UserId) REFERENCES [User](Id) 
)




GO

CREATE NONCLUSTERED INDEX [IX_PasswordResetToken_UserId] ON [dbo].[PasswordResetToken] (UserId)

GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_PasswordResetToken_TokenHash] ON [dbo].[PasswordResetToken] (TokenHash)

GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_PasswordResetToken_Uuid] ON [dbo].[PasswordResetToken] (Uuid)

--GO

--CREATE CLUSTERED INDEX [IX_PasswordResetToken_Id] ON [dbo].PasswordResetToken (Id)
