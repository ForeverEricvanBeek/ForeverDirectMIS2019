﻿CREATE TABLE [DM].[D_Complaint] (
    [D_Complaint_Skey]                    BIGINT          IDENTITY (1, 1) NOT NULL,
    [Complaint_ID]                        NVARCHAR (12)   NOT NULL,
    [Complaint_Date]                      DATE            NULL,
    [Complaint_Incomplete]                CHAR (1)        NULL,
    [Complaint_Checked]                   CHAR (1)        NULL,
    [Complaint_Allocated_Item]            NVARCHAR (50)   NULL,
    [Complaint_Picked_Item]               NVARCHAR (50)   NULL,
    [Complaint_Allocated_Item_Reported]   NVARCHAR (50)   NULL,
    [Complaint_Picked_Item_Reported]      NVARCHAR (50)   NULL,
    [Complaint_Allocated_Batch]           NVARCHAR (50)   NULL,
    [Complaint_Allocated_Qty]             INT             NULL,
    [Complaint_Qty]                       INT             NULL,
    [Complaint_Error]                     NVARCHAR (255)  NULL,
    [Complaint_Comments]                  NVARCHAR (4000) NULL,
    [Complaint_Credit_Note]               NVARCHAR (255)  NULL,
    [Complaint_Service_Order]             NVARCHAR (255)  NULL,
    [Complaint_Carrier_Damage]            NVARCHAR (255)  NULL,
    [Complaint_Customer_Service_Operator] NVARCHAR (255)  NULL,
    [Complaint_Conterminator]             NVARCHAR (50)   NULL,
    [Complaint_Pos_Reported]              NVARCHAR (50)   NULL,
    [CheckSum]                            NVARCHAR (32)   NULL,
    [CheckSumSCD1]                        NVARCHAR (32)   NULL,
    [CheckSumSCD2]                        NVARCHAR (32)   NULL,
    [IsActual]                            INT             NOT NULL,
    [IsInferred]                          INT             NULL,
    [IsDeleted]                           INT             NULL,
    [EffectiveDate]                       DATE            NOT NULL,
    [ExpiryDate]                          DATE            NULL,
    [InsertDateTime]                      DATETIME2 (7)   NULL,
    [UpdateDateTime]                      DATETIME2 (7)   NULL,
    [BatchID]                             BIGINT          NOT NULL,
    [ProcessLogID]                        BIGINT          NULL,
    CONSTRAINT [PK_D_Complaint] PRIMARY KEY CLUSTERED ([D_Complaint_Skey] ASC) WITH (FILLFACTOR = 80)
);



