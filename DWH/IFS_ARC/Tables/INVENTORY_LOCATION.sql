CREATE TABLE [IFS_ARC].[INVENTORY_LOCATION] (
    [CONTRACT]              NVARCHAR (5)    NOT NULL,
    [LOCATION_NO]           NVARCHAR (35)   NULL,
    [LOCATION_GROUP]        NVARCHAR (5)    NULL,
    [WAREHOUSE]             NVARCHAR (15)   NOT NULL,
    [BAY_NO]                NVARCHAR (5)    NOT NULL,
    [ROW_NO]                NVARCHAR (5)    NOT NULL,
    [TIER_NO]               NVARCHAR (5)    NOT NULL,
    [BIN_NO]                NVARCHAR (5)    NOT NULL,
    [LOCATION_NAME]         NVARCHAR (200)  NULL,
    [PRIORITY]              INT             NULL,
    [LOCATION_SEQUENCE]     INT             NULL,
    [BIN_WIDTH]             INT             NULL,
    [BIN_HEIGHT]            INT             NULL,
    [BIN_DEPTH]             INT             NULL,
    [BIN_CARRYING_CAPACITY] INT             NULL,
    [MIN_TEMPERATURE]       INT             NULL,
    [MAX_TEMPERATURE]       INT             NULL,
    [MIN_HUMIDITY]          INT             NULL,
    [MAX_HUMIDITY]          INT             NULL,
    [OBJID]                 NVARCHAR (4000) NULL,
    [OBJVERSION]            NVARCHAR (2000) NULL,
    [Eff_Date]              DATE            NOT NULL,
    [End_Date]              DATE            NULL,
    [ActInd]                CHAR (1)        NULL,
    [IsDeleted]             CHAR (1)        NULL,
    [BatchID]               BIGINT          NULL,
    [ProcessLogID]          BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_LOCATION] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [WAREHOUSE] ASC, [BAY_NO] ASC, [ROW_NO] ASC, [TIER_NO] ASC, [BIN_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





