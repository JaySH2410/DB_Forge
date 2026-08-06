GO
CREATE TABLE [dbo].[MetaObject]
(
    [Id] INT NOT NULL PRIMARY KEY,
    [ObjUid] UNIQUEIDENTIFIER NOT NULL, 
    [ObjTypeUid] UNIQUEIDENTIFIER,
    [ApplicationUid] UNIQUEIDENTIFIER NOT NULL, 
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
    CONSTRAINT [FK_MetaObject_Application_ApplicationUid] FOREIGN KEY (ApplicationUid) REFERENCES [Application](Uuid)
    CONSTRAINT [FK_MetaObject_MetaObject_ObjTypeUid] FOREIGN KEY (ObjTypeUid) REFERENCES [MetaObject](ObjUid)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_MetaObject_ObjUid] ON [dbo].[MetaObject] (ObjUid)
GO
CREATE NONCLUSTERED INDEX [IX_MetaObject_ObjTypeUid] ON [dbo].[MetaObject] (ObjTypeUid)
GO
CREATE NONCLUSTERED INDEX [IX_MetaObject_ApplicationUid] ON [dbo].[MetaObject] (ApplicationUid)