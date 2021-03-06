﻿CREATE TABLE [DM].[D_OF_Complaints] (
    [D_OF_Complaints_Skey]                    BIGINT          IDENTITY (1, 1) NOT NULL,
    [OF_Complaints_ID]                        NVARCHAR (12)   NOT NULL,
    [OF_Complaints_Date]                      DATETIME2 (7)   NULL,
    [OF_Complaints_Order_ID]                  NVARCHAR (50)   NOT NULL,
    [OF_Complaints_Pos_ID]                    NVARCHAR (50)   NOT NULL,
    [OF_Complaints_Facility]                  NVARCHAR (50)   NULL,
    [OF_Complaints_Incomplete]                NVARCHAR (50)   NULL,
    [OF_Complaints_Checked]                   NVARCHAR (50)   NULL,
    [OF_Complaints_New]                       TINYINT         NULL,
    [OF_Complaints_OLPN_ID]                   NVARCHAR (50)   NULL,
    [OF_Complaints_Allocated_Item]            NVARCHAR (50)   NULL,
    [OF_Complaints_Picked_Item]               NVARCHAR (50)   NULL,
    [OF_Complaints_Allocated_Item_Reported]   NVARCHAR (50)   NULL,
    [OF_Complaints_Picked_Item_Reported]      NVARCHAR (50)   NULL,
    [OF_Complaints_Allocated_Batch]           NVARCHAR (50)   NULL,
    [OF_Complaints_Allocated_Qty]             INT             NULL,
    [OF_Complaints_Qty]                       INT             NULL,
    [OF_Complaints_Picker_ID]                 NVARCHAR (50)   NULL,
    [OF_Complaints_Picker_Name]               NVARCHAR (350)  NULL,
    [OF_Complaints_QA_operator]               NVARCHAR (350)  NULL,
    [OF_Complaints_Error]                     NVARCHAR (50)   NULL,
    [OF_Complaints_Error_Type]                NVARCHAR (9)    NULL,
    [OF_Complaints_Comments]                  NVARCHAR (4000) NULL,
    [OF_Complaints_Credit_Note]               NVARCHAR (255)  NULL,
    [OF_Complaints_Service_Order]             NVARCHAR (255)  NULL,
    [OF_Complaints_Carrier_Damage]            NVARCHAR (255)  NULL,
    [OF_Complaints_Customer_Service_Operator] NVARCHAR (255)  NULL,
    [OF_Complaints_Conterminator]             NVARCHAR (255)  NULL,
    [CheckSum]                                NVARCHAR (32)   NULL,
    [CheckSumSCD1]                            NVARCHAR (32)   NULL,
    [CheckSumSCD2]                            NVARCHAR (32)   NULL,
    [IsActual]                                INT             NOT NULL,
    [IsInferred]                              INT             NULL,
    [IsDeleted]                               INT             NULL,
    [EffectiveDate]                           DATE            NOT NULL,
    [ExpiryDate]                              DATE            NULL,
    [InsertDateTime]                          DATETIME2 (7)   NULL,
    [UpdateDateTime]                          DATETIME2 (7)   NULL,
    [BatchID]                                 BIGINT          NOT NULL,
    [ProcessLogID]                            BIGINT          NULL,
    CONSTRAINT [PK_D_OF_Complaints_Skey] PRIMARY KEY CLUSTERED ([D_OF_Complaints_Skey] ASC) WITH (FILLFACTOR = 80)
);


GO
CREATE NONCLUSTERED INDEX [NI_D_OF_Complaints_Complaint]
    ON [DM].[D_OF_Complaints]([OF_Complaints_ID] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

