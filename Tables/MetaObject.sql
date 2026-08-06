CREATE TABLE [dbo].[MetaObject]
(
    [Id] INT NOT NULL PRIMARY KEY,
    [ObjUid] UNIQUEIDENTIFIER NOT NULL, 
    [ObjTypeUid] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(200) NOT NULL, 
    [DisplayName] NVARCHAR(200) NULL, 
    [Description] NVARCHAR(4000) NULL,
    [Version] NVARCHAR(200) NOT NULL, 
    IsActive BIT NOT NULL DEFAULT 1,
    [CreatedAt] DATETIMEOFFSET NOT NULL, 
    [CreatedBy] INT NULL, 
    [UpdatedAt] DATETIMEOFFSET NULL, 
    [UpdatedBy] INT NULL, 
    [DeletedAt] DATETIMEOFFSET NULL ,
    [DeletedBy] INT NULL
)