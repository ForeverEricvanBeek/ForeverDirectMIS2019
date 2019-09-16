CREATE TABLE [DM].[D_HourType] (
    [D_HourType_Skey]      BIGINT         IDENTITY (1, 1) NOT NULL,
    [HourType_ID]          SMALLINT       NULL,
    [HourType_Code]        NVARCHAR (50)  NULL,
    [HourType_Description] NVARCHAR (250) NULL,
    [CheckSum]             NVARCHAR (32)  NULL,
    [CheckSumSCD1]         NVARCHAR (32)  NULL,
    [CheckSumSCD2]         NVARCHAR (32)  NULL,
    [IsActual]             INT            NOT NULL,
    [IsInferred]           INT            NULL,
    [IsDeleted]            INT            NULL,
    [EffectiveDate]        DATE           NOT NULL,
    [ExpiryDate]           DATE           NULL,
    [InsertDateTime]       DATETIME2 (7)  NULL,
    [UpdateDateTime]       DATETIME2 (7)  NULL,
    [BatchID]              BIGINT         NOT NULL,
    [ProcessLogID]         BIGINT         NULL,
    CONSTRAINT [PK_D_HourType] PRIMARY KEY CLUSTERED ([D_HourType_Skey] ASC) WITH (FILLFACTOR = 90)
);

