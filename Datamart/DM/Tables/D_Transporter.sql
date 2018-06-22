CREATE TABLE [DM].[D_Transporter] (
    [D_Transporter_Skey]        BIGINT          IDENTITY (1, 1) NOT NULL,
    [Transporter_Code]          NVARCHAR (10)   NULL,
    [Transporter_Name]          NVARCHAR (100)  NULL,
    [Transporter_SubCode]       NVARCHAR (10)   NULL,
    [Transporter_Ship_Via_Code] NVARCHAR (4)    NOT NULL,
    [Transporter_Ship_Via_Desc] NVARCHAR (150)  NULL,
    [Transporter_Country_Code]  NVARCHAR (2)    NULL,
    [Transporter_Address]       NVARCHAR (255)  NULL,
    [Transporter_City]          NVARCHAR (50)   NULL,
    [Transporter_Postal_Code]   NVARCHAR (10)   NULL,
    [Transporter_CutOff_Time]   TIME (7)        NULL,
    [Transporter_LT_Delivered]  INT             NULL,
    [Transporter_AVG_Parcels]   DECIMAL (18, 2) NULL,
    [Transporter_AVG_Lines]     DECIMAL (18, 2) NULL,
    [CheckSum]                  NVARCHAR (32)   NULL,
    [CheckSumSCD1]              NVARCHAR (32)   NULL,
    [CheckSumSCD2]              NVARCHAR (32)   NULL,
    [IsActual]                  INT             NOT NULL,
    [IsInferred]                INT             NULL,
    [IsDeleted]                 INT             NULL,
    [EffectiveDate]             DATE            NOT NULL,
    [ExpiryDate]                DATE            NULL,
    [InsertDateTime]            DATETIME2 (7)   NULL,
    [UpdateDateTime]            DATETIME2 (7)   NULL,
    [BatchID]                   BIGINT          NOT NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_D_Transporter] PRIMARY KEY CLUSTERED ([D_Transporter_Skey] ASC) WITH (FILLFACTOR = 80)
);




GO
CREATE NONCLUSTERED INDEX [NI_D_Transporter_SubCode_Ship_Via]
    ON [DM].[D_Transporter]([D_Transporter_Skey] ASC, [Transporter_SubCode] ASC, [Transporter_Ship_Via_Code] ASC) WITH (FILLFACTOR = 80);


GO
CREATE NONCLUSTERED INDEX [NI_D_Transporter_Ship_Via]
    ON [DM].[D_Transporter]([Transporter_Ship_Via_Code] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

