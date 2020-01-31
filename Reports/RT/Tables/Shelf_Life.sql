CREATE TABLE [RT].[Shelf_Life] (
    [Category_Code]              NVARCHAR (20)  NULL,
    [SKU_Name]                   NVARCHAR (100) NULL,
    [SKU_Description]            NVARCHAR (65)  NULL,
    [Lot_Code]                   NVARCHAR (20)  NULL,
    [Expiration_Date]            CHAR (30)      NULL,
    [ILPN_TC_LPN_ID]             NVARCHAR (50)  NULL,
    [Location_Display_Location]  NVARCHAR (15)  NULL,
    [Location_Class_Description] NVARCHAR (100) NULL,
    [Location_Work_Group]        NVARCHAR (4)   NULL,
    [ILPN_LOCK_CODE]             NVARCHAR (50)  NULL,
    [Number_Of_Units]            INT            NULL,
    [Request_ID]                 BIGINT         NULL,
    [BatchID]                    BIGINT         NULL,
    [ProcessLogID]               BIGINT         NULL
);

