CREATE TABLE [IFS].[INVENTORY_PART_UNIT_COST_SUM] (
    [CONTRACT]         NVARCHAR (5)    NULL,
    [PART_NO]          NVARCHAR (25)   NOT NULL,
    [CONFIGURATION_ID] NVARCHAR (50)   NULL,
    [LOT_BATCH_NO]     NVARCHAR (20)   NOT NULL,
    [SERIAL_NO]        NVARCHAR (50)   NULL,
    [INVENTORY_VALUE]  DECIMAL (18, 2) NOT NULL,
    [Eff_Date]         DATE            NOT NULL,
    [End_Date]         DATE            NULL,
    [ActInd]           CHAR (1)        NULL,
    [IsDeleted]        CHAR (1)        NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_PART_UNIT_COST_SUM] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [LOT_BATCH_NO] ASC, [INVENTORY_VALUE] ASC, [Eff_Date] ASC)
);

