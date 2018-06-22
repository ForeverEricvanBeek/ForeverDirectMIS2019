CREATE TABLE [DM].[D_Pickers] (
    [D_Pickers_Skey]    BIGINT         IDENTITY (1, 1) NOT NULL,
    [Pickers_ID]        NVARCHAR (50)  NULL,
    [Pickers_Name]      NVARCHAR (300) NULL,
    [Pickers_Active]    TINYINT        NULL,
    [Pickers_Manhattan] TINYINT        NULL,
    [CheckSum]          NVARCHAR (32)  NULL,
    [CheckSumSCD1]      NVARCHAR (32)  NULL,
    [CheckSumSCD2]      NVARCHAR (32)  NULL,
    [IsActual]          INT            NOT NULL,
    [IsInferred]        INT            NULL,
    [IsDeleted]         INT            NULL,
    [EffectiveDate]     DATE           NOT NULL,
    [ExpiryDate]        DATE           NULL,
    [InsertDateTime]    DATETIME2 (7)  NULL,
    [UpdateDateTime]    DATETIME2 (7)  NULL,
    [BatchID]           BIGINT         NOT NULL,
    [ProcessLogID]      BIGINT         NULL,
    CONSTRAINT [PK_D_Pickers] PRIMARY KEY CLUSTERED ([D_Pickers_Skey] ASC) WITH (FILLFACTOR = 80)
);

