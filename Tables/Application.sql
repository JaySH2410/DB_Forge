CREATE TABLE [dbo].[Application]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Uuid] UNIQUEIDENTIFIER NOT NULL, 
    [Name] NVARCHAR(200) NOT NULL, 
    [DisplayName] NVARCHAR(200) NULL, 
    [Description] NVARCHAR(4000) NULL,
    [Version] NVARCHAR(200) NOT NULL, 
    [CreatedAt] DATETIMEOFFSET NOT NULL, 
    [CreatedBy] INT NULL, 
    [UpdatedAt] DATETIMEOFFSET NULL, 
    [UpdatedBy] INT NULL, 
    [DeletedAt] DATETIMEOFFSET NULL ,
    [DeletedBy] INT NULL
)



GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Application_Uuid] ON [dbo].[Application] (Uuid)

--GO

--CREATE CLUSTERED INDEX [IX_Application_Id] ON [dbo].[Application] (Id)