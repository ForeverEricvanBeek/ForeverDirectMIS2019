CREATE TABLE [DM].[D_ActivityType] (
    [D_ActivityType_Skey]       BIGINT         IDENTITY (1, 1) NOT NULL,
    [Activity_Type]             NVARCHAR (3)   NOT NULL,
    [Activity_Code]             NVARCHAR (3)   NOT NULL,
    [Activity_Type_Description] NVARCHAR (100) NULL,
    [Activity_Code_Description] NVARCHAR (100) NULL,
    [Activity_Menu_Option]      NVARCHAR (40)  NULL,
    [CheckSum]                  NVARCHAR (32)  NULL,
    [CheckSumSCD1]              NVARCHAR (32)  NULL,
    [CheckSumSCD2]              NVARCHAR (32)  NULL,
    [IsActual]                  INT            NULL,
    [IsInferred]                INT            NULL,
    [IsDeleted]                 INT            NULL,
    [EffectiveDate]             DATE           NULL,
    [ExpiryDate]                DATE           NULL,
    [InsertDateTime]            DATETIME2 (7)  NULL,
    [UpdateDateTime]            DATETIME2 (7)  NULL,
    [BatchID]                   BIGINT         NULL,
    [ProcessLogID]              BIGINT         NULL,
    CONSTRAINT [PK_D_ActivityType_Skey] PRIMARY KEY CLUSTERED ([D_ActivityType_Skey] ASC) WITH (FILLFACTOR = 80)
);

