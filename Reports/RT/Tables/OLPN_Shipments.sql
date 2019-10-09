CREATE TABLE [RT].[OLPN_Shipments] (
    [Order_Pos_Number]           NVARCHAR (50)   NULL,
    [Order_Country_Code]         NVARCHAR (10)   NULL,
    [Order_Date]                 NVARCHAR (16)   NULL,
    [Shipped_Date]               NVARCHAR (16)   NULL,
    [Customer_Phone]             NVARCHAR (100)  NULL,
    [Customer_Email]             NVARCHAR (100)  NULL,
    [OLPN_ID]                    NVARCHAR (50)   NULL,
    [OLPN_X_Y]                   VARCHAR (25)    NULL,
    [OLPN_Tracking_Code]         VARCHAR (50)    NULL,
    [OLPN_Box_Size]              NVARCHAR (100)  NULL,
    [OLPN_Container_Description] NVARCHAR (35)   NULL,
    [OLPN_Volume]                NUMERIC (16, 4) NULL,
    [OLPN_Weight]                NUMERIC (16, 4) NULL,
    [Request_ID]                 BIGINT          NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL
);

