CREATE TABLE [dbo].EmailVerificationToken
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
    CONSTRAINT [FK_EmailVerificationToken_User_UserId] FOREIGN KEY (UserId) REFERENCES [User](Id) 
)




GO

CREATE NONCLUSTERED INDEX [IX_EmailVerificationToken_UserId] ON [dbo].[EmailVerificationToken] (UserId)

GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_EmailVerificationToken_TokenHash] ON [dbo].[EmailVerificationToken] (TokenHash)

GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_EmailVerificationToken_Uuid] ON [dbo].[EmailVerificationToken] (Uuid)

--GO

--CREATE CLUSTERED INDEX [IX_EmailVerificationToken_Id] ON [dbo].EmailVerificationToken (Id)
