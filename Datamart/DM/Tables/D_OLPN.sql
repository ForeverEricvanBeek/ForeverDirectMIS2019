CREATE TABLE [DM].[D_OLPN] (
    [D_OLPN_Skey]                        BIGINT          IDENTITY (1, 1) NOT NULL,
    [OLPN_ID]                            NVARCHAR (50)   NOT NULL,
    [OLPN_Order_ID]                      NVARCHAR (50)   NULL,
    [OLPN_Tracking_Code]                 VARCHAR (50)    NULL,
    [OLPN_Status]                        NVARCHAR (50)   NULL,
    [OLPN_Weight]                        NUMERIC (16, 4) NULL,
    [OLPN_First_Weight]                  NUMERIC (16, 4) NULL,
    [OLPN_Last_Weight]                   NUMERIC (16, 4) NULL,
    [OLPN_Volume]                        NUMERIC (16, 4) NULL,
    [OLPN_Quantity]                      NUMERIC (13, 4) NULL,
    [OLPN_Dangerous_Goods]               INT             NULL,
    [OLPN_Box_Size]                      NVARCHAR (100)  NULL,
    [OLPN_Order_Create_Date]             DATETIME2 (7)   NULL,
    [OLPN_Handled_Date]                  DATETIME2 (7)   NULL,
    [OLPN_Shipped_Date]                  DATETIME2 (7)   NULL,
    [OLPN_Ship_Confirm_Date]             DATETIME2 (7)   NULL,
    [OLPN_First_Scan_Date]               DATETIME2 (7)   NULL,
    [OLPN_First_Attempt_Date]            DATETIME2 (7)   NULL,
    [OLPN_Delivered_Date]                DATETIME2 (7)   NULL,
    [OLPN_LT_Create_Delivered]           INT             NULL,
    [OLPN_LT_Ship_Confirm_First_Scan]    INT             NULL,
    [OLPN_LT_Ship_Confirm_First_Attempt] INT             NULL,
    [OLPN_LT_Ship_Confirm_Delivered]     INT             NULL,
    [OLPN_Track_Trace_Link]              NVARCHAR (300)  NULL,
    [OLPN_Pallet_ID]                     NVARCHAR (50)   NULL,
    [OLPN_Document_Location]             NVARCHAR (4000) NULL,
    [CheckSum]                           NVARCHAR (32)   NULL,
    [CheckSumSCD1]                       NVARCHAR (32)   NULL,
    [CheckSumSCD2]                       NVARCHAR (32)   NULL,
    [IsActual]                           INT             NOT NULL,
    [IsInferred]                         INT             NULL,
    [IsDeleted]                          INT             NULL,
    [EffectiveDate]                      DATE            NOT NULL,
    [ExpiryDate]                         DATE            NULL,
    [InsertDateTime]                     DATETIME2 (7)   NULL,
    [UpdateDateTime]                     DATETIME2 (7)   NULL,
    [BatchID]                            BIGINT          NOT NULL,
    [ProcessLogID]                       BIGINT          NULL,
    CONSTRAINT [PK_D_OLPN] PRIMARY KEY CLUSTERED ([D_OLPN_Skey] ASC) WITH (FILLFACTOR = 80)
);


GO
CREATE NONCLUSTERED INDEX [NI_D_OLPN_OLPN_ID_ACTUAL]
    ON [DM].[D_OLPN]([OLPN_ID] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

