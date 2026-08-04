CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Uuid] UNIQUEIDENTIFIER NOT NULL, 
    [FirstName] NVARCHAR(100) NOT NULL, 
    [LastName] NVARCHAR(100) NOT NULL, 
    [Email] NVARCHAR(255) NOT NULL, 
    [PasswordHash] NVARCHAR(MAX) NOT NULL, 
    [IsEmailVerified] BIT NOT NULL DEFAULT 0, 
    IsActive BIT NOT NULL DEFAULT 1,
    [CreatedAt] DATETIMEOFFSET NULL, 
    [CreatedBy] INT NULL, 
    [UpdatedAt] DATETIMEOFFSET NULL, 
    [UpdatedBy] INT NULL, 
    [DeletedAt] DATETIMEOFFSET NULL ,
    [DeletedBy] INT NULL 
)

GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_User_Email] ON [dbo].[User] (Email)
