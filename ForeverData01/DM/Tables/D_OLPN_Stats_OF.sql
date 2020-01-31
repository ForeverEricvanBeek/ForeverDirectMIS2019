CREATE TABLE [DM].[D_OLPN_Stats_OF] (
    [D_OLPN_Stats_OF_Skey]    BIGINT        IDENTITY (1, 1) NOT NULL,
    [OLPN_ID]                 NVARCHAR (50) NOT NULL,
    [MENU_OPTN_NAME]          NVARCHAR (40) NULL,
    [MODULE_NAME]             NVARCHAR (10) NULL,
    [CREATE_DATE_TIME]        DATETIME2 (7) NULL,
    [BEGIN_DATE]              DATETIME2 (7) NULL,
    [END_DATE]                DATETIME2 (7) NULL,
    [ORDER_ID]                NVARCHAR (50) NULL,
    [REF_FIELD]               NVARCHAR (50) NULL,
    [ORDER_TYPE]              NVARCHAR (20) NULL,
    [Ship_Via]                NVARCHAR (4)  NULL,
    [Order_Country_Code]      NVARCHAR (2)  NULL,
    [Lus]                     VARCHAR (5)   NULL,
    [Order_Planned_Ship_Date] DATE          NULL,
    [Order_Wave_Date]         DATETIME2 (7) NULL,
    [USER_ID]                 NVARCHAR (15) NULL,
    [CheckSum]                NVARCHAR (32) NULL,
    [CheckSumSCD1]            NVARCHAR (32) NULL,
    [CheckSumSCD2]            NVARCHAR (32) NULL,
    [IsActual]                INT           NOT NULL,
    [IsInferred]              INT           NULL,
    [IsDeleted]               INT           NULL,
    [EffectiveDate]           DATE          NOT NULL,
    [ExpiryDate]              DATE          NULL,
    [InsertDateTime]          DATETIME2 (7) NULL,
    [UpdateDateTime]          DATETIME2 (7) NULL,
    [BatchID]                 BIGINT        NOT NULL,
    [ProcessLogID]            BIGINT        NULL,
    CONSTRAINT [PK_D_OLPN_Stats_OF] PRIMARY KEY CLUSTERED ([D_OLPN_Stats_OF_Skey] ASC) WITH (FILLFACTOR = 80)
);





