CREATE TABLE [PROD].[MANUF_STRUCTURE_HEAD] (
    [CONTRACT]           NVARCHAR (5)    NOT NULL,
    [PART_NO]            NVARCHAR (25)   NOT NULL,
    [ENG_CHG_LEVEL]      NVARCHAR (2)    NOT NULL,
    [BOM_TYPE]           NVARCHAR (200)  NULL,
    [BOM_TYPE_DB]        NVARCHAR (20)   NOT NULL,
    [NOTE_ID]            INT             NULL,
    [NOTE_TEXT]          NVARCHAR (2000) NULL,
    [ENG_CHG_ORDER]      NVARCHAR (10)   NULL,
    [EFF_PHASE_IN_DATE]  DATE            NULL,
    [EFF_PHASE_OUT_DATE] DATE            NULL,
    [ENG_REVISION]       NVARCHAR (6)    NULL,
    [CREATE_DATE]        DATETIME2 (7)   NULL,
    [CUST_WARRANTY_ID]   INT             NULL,
    [OBJID]              NVARCHAR (100)  NULL,
    [OBJVERSION]         BIGINT          NULL,
    [BatchID]            BIGINT          NULL,
    [ProcessLogID]       BIGINT          NULL,
    CONSTRAINT [PK_MANUF_STRUCTURE_HEAD] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [PART_NO] ASC, [ENG_CHG_LEVEL] ASC, [BOM_TYPE_DB] ASC)
);

