CREATE TABLE [IFS_ARC].[INVENTORY_PART_CHAR_ALL] (
    [CONTRACT]            NVARCHAR (5)    NOT NULL,
    [PART_NO]             NVARCHAR (25)   NOT NULL,
    [CHARACTERISTIC_CODE] NVARCHAR (5)    NOT NULL,
    [UNIT_MEAS]           NVARCHAR (10)   NULL,
    [ATTR_VALUE]          NVARCHAR (60)   NULL,
    [ATTR_VALUE_NUMERIC]  INT             NULL,
    [ATTR_VALUE_ALPHA]    NVARCHAR (60)   NULL,
    [OBJID]               NVARCHAR (4000) NULL,
    [OBJVERSION]          NVARCHAR (2000) NULL,
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_PART_CHAR_ALL] PRIMARY KEY CLUSTERED ([CHARACTERISTIC_CODE] ASC, [CONTRACT] ASC, [Eff_Date] ASC, [PART_NO] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];



