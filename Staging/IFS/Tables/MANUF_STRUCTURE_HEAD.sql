CREATE TABLE [IFS].[MANUF_STRUCTURE_HEAD] (
    [CONTRACT]           NVARCHAR (5)    NULL,
    [PART_NO]            NVARCHAR (25)   NULL,
    [ENG_CHG_LEVEL]      NVARCHAR (2)    NULL,
    [BOM_TYPE]           NVARCHAR (200)  NULL,
    [BOM_TYPE_DB]        NVARCHAR (20)   NULL,
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
    [ProcessLogID]       BIGINT          NULL
);





