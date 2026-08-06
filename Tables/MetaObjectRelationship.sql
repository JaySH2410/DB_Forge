CREATE TABLE [dbo].[MetaObjectRelationship]
(
    [Id] INT NOT NULL PRIMARY KEY,
    [RelUid] UNIQUEIDENTIFIER NOT NULL, 
    [RelTypeUid] UNIQUEIDENTIFIER,
    [End1Uid] UNIQUEIDENTIFIER NOT NULL,
    [End2Uid] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(200) NOT NULL, 
    [DisplayName] NVARCHAR(200) NULL, 
    [Description] NVARCHAR(4000) NULL,
    [Ordinal] INT NOT NULL DEFAULT 0,
    IsActive BIT NOT NULL DEFAULT 1,
    [CreatedAt] DATETIMEOFFSET NOT NULL, 
    [CreatedBy] INT NULL, 
    [UpdatedAt] DATETIMEOFFSET NULL, 
    [UpdatedBy] INT NULL, 
    [DeletedAt] DATETIMEOFFSET NULL ,
    [DeletedBy] INT NULL
    CONSTRAINT [FK_MetaObjectRelationship_MetaObject_RelTypeUid] FOREIGN KEY (RelTypeUid) REFERENCES [MetaObject](ObjUid)
    CONSTRAINT [FK_MetaObjectRelationship_MetaObject_End1Uid] FOREIGN KEY (End1Uid) REFERENCES [MetaObject](ObjUid)
    CONSTRAINT [FK_MetaObjectRelationship_MetaObject_End2Uid] FOREIGN KEY (End2Uid) REFERENCES [MetaObject](ObjUid)
)

CREATE UNIQUE NONCLUSTERED INDEX [IX_MetaObjectRelationship_RelUid] ON [dbo].[MetaObjectRelationship] (RelUid)
CREATE NONCLUSTERED INDEX [IX_MetaObjectRelationship_RelTypeUid] ON [dbo].[MetaObjectRelationship] (RelTypeUid)
CREATE NONCLUSTERED INDEX [IX_MetaObjectRelationship_End1Uid] ON [dbo].[MetaObjectRelationship] (End1Uid)
CREATE NONCLUSTERED INDEX [IX_MetaObjectRelationship_End2Uid] ON [dbo].[MetaObjectRelationship] (End2Uid)
CREATE NONCLUSTERED INDEX [IX_MetaObjectRelationship_RelTypeUid_End1Uid] ON [dbo].[MetaObjectRelationship] (RelTypeUid, End1Uid)
CREATE NONCLUSTERED INDEX [IX_MetaObjectRelationship_RelTypeUid_End2Uid] ON [dbo].[MetaObjectRelationship] (RelTypeUid, End2Uid)
CREATE NONCLUSTERED INDEX [IX_MetaObjectRelationship_RelTypeUid_End1Uid_End2Uid] ON [dbo].[MetaObjectRelationship] (RelTypeUid, End1Uid, End2Uid)
