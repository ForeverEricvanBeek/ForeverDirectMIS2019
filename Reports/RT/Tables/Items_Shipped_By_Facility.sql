CREATE TABLE [RT].[Items_Shipped_By_Facility] (
    [Facility_ID]             NVARCHAR (16)  NULL,
    [Year]                    INT            NULL,
    [Month]                   INT            NULL,
    [SKU_Name]                NVARCHAR (100) NULL,
    [Number_Of_Units_Shipped] INT            NULL,
    [Request_ID]              BIGINT         NULL,
    [BatchID]                 BIGINT         NULL,
    [ProcessLogID]            BIGINT         NULL
);

