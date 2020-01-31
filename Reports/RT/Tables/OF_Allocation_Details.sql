CREATE TABLE [RT].[OF_Allocation_Details] (
    [GRP_ATTR]        NVARCHAR (24)   NULL,
    [DSP_LOCN]        NVARCHAR (15)   NULL,
    [ITEM_NAME]       NVARCHAR (100)  NULL,
    [YEAR]            VARCHAR (10)    NULL,
    [PICKS]           INT             NULL,
    [ALLOC_QTY]       INT             NULL,
    [WORK_AREA]       NVARCHAR (4)    NULL,
    [PICK_DETRM_ZONE] NVARCHAR (3)    NULL,
    [QUANTITY]        INT             NULL,
    [SKU_DEDCTN_TYPE] NVARCHAR (1)    NULL,
    [UNIT_WEIGHT]     NUMERIC (16, 4) NULL,
    [UNIT_VOLUME]     NUMERIC (16, 4) NULL,
    [UNIT_HEIGHT]     NUMERIC (16, 4) NULL,
    [UNIT_WIDTH]      NUMERIC (16, 4) NULL,
    [UNIT_LENGTH]     NUMERIC (16, 4) NULL,
    [DESCRIPTION]     NVARCHAR (65)   NULL,
    [CASE_SIZE_TYPE]  NVARCHAR (3)    NULL,
    [DSG_SHIP_VIA]    NVARCHAR (4)    NULL,
    [Request_ID]      BIGINT          NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL
);

