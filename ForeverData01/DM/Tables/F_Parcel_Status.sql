CREATE TABLE [DM].[F_Parcel_Status] (
    [Parcel_Status_OLPN_ID]        NVARCHAR (50)  NULL,
    [Parcel_Status_Code]           NVARCHAR (150) NULL,
    [Parcel_Status_Status_Date]    DATETIME2 (7)  NULL,
    [Parcel_Status_Forwarder_Code] NVARCHAR (50)  NULL,
    [Parcel_Status_Category]       NVARCHAR (50)  NULL,
    [Parcel_Status_Description]    NVARCHAR (200) NULL,
    [InsertDateTime]               DATETIME2 (7)  NULL,
    [UpdateDateTime]               DATETIME2 (7)  NULL,
    [BatchID]                      BIGINT         NOT NULL,
    [ProcessLogID]                 BIGINT         NULL
);

