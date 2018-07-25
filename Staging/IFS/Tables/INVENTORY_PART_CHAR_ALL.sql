CREATE TABLE [IFS].[INVENTORY_PART_CHAR_ALL] (
    [CONTRACT]            NVARCHAR (5)    NOT NULL,
    [PART_NO]             NVARCHAR (25)   NOT NULL,
    [CHARACTERISTIC_CODE] NVARCHAR (5)    NOT NULL,
    [UNIT_MEAS]           NVARCHAR (10)   NULL,
    [ATTR_VALUE]          NVARCHAR (60)   NULL,
    [ATTR_VALUE_NUMERIC]  INT             NULL,
    [ATTR_VALUE_ALPHA]    NVARCHAR (60)   NULL,
    [OBJID]               NVARCHAR (4000) NULL,
    [OBJVERSION]          NVARCHAR (2000) NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL
);

