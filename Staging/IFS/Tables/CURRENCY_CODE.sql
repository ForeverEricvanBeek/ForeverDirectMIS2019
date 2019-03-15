CREATE TABLE [IFS].[CURRENCY_CODE] (
    [COMPANY]                NVARCHAR (20)   NOT NULL,
    [CURRENCY_CODE]          NVARCHAR (3)    NOT NULL,
    [CONV_FACTOR]            INT             NULL,
    [DESCRIPTION]            NVARCHAR (4000) NULL,
    [CURRENCY_ROUNDING]      INT             NULL,
    [DECIMALS_IN_RATE]       INT             NULL,
    [INVERTED]               NVARCHAR (5)    NULL,
    [EMU_CURRENCY_FROM_DATE] DATETIME2 (7)   NULL,
    [OBJID]                  NVARCHAR (4000) NULL,
    [OBJVERSION]             NVARCHAR (2000) NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_CURRENCY_CODE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [CURRENCY_CODE] ASC)
);

