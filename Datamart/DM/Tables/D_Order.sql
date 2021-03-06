﻿CREATE TABLE [DM].[D_Order] (
    [D_Order_Skey]                        BIGINT         IDENTITY (1, 1) NOT NULL,
    [Order_ID]                            NVARCHAR (50)  NOT NULL,
    [Order_Shipment_ID]                   NVARCHAR (50)  NULL,
    [Order_Ship_Via_Code]                 NVARCHAR (4)   NULL,
    [Order_Facility_Code]                 NVARCHAR (16)  NULL,
    [Order_Country_Code]                  NVARCHAR (10)  NULL,
    [Order_Pos_Number]                    NVARCHAR (50)  NULL,
    [Order_Carrier_Code]                  NVARCHAR (10)  NULL,
    [Order_Customer_ID]                   NVARCHAR (300) NULL,
    [Order_Status]                        NVARCHAR (50)  NULL,
    [Order_Cuttoff_Time]                  TIME (7)       NULL,
    [Order_Wave_Date]                     DATETIME2 (7)  NULL,
    [Order_Create_Date]                   DATETIME2 (7)  NULL,
    [Order_Planned_Ship_Date]             DATETIME2 (7)  NULL,
    [Order_Shipped_Date]                  DATETIME2 (7)  NULL,
    [Order_Days_To_Late]                  INT            NULL,
    [Order_Ship_Confirm_Date]             DATETIME2 (7)  NULL,
    [Order_First_Scan_Date]               DATETIME2 (7)  NULL,
    [Order_First_Attempt_Date]            DATETIME2 (7)  NULL,
    [Order_Delivered_Date]                DATETIME2 (7)  NULL,
    [Order_LT_Create_Delivered]           INT            NULL,
    [Order_LT_Ship_Confirm_First_Scan]    INT            NULL,
    [Order_LT_Ship_Confirm_First_Attempt] INT            NULL,
    [Order_LT_Ship_Confirm_Delivered]     INT            NULL,
    [Order_Number_Of_Parcels]             INT            NULL,
    [Order_IFS_Order_ID]                  NVARCHAR (11)  NULL,
    [Order_Type]                          NVARCHAR (20)  NULL,
    [CheckSum]                            NVARCHAR (32)  NULL,
    [CheckSumSCD1]                        NVARCHAR (32)  NULL,
    [CheckSumSCD2]                        NVARCHAR (32)  NULL,
    [IsActual]                            INT            NOT NULL,
    [IsInferred]                          INT            NULL,
    [IsDeleted]                           INT            NULL,
    [EffectiveDate]                       DATE           NOT NULL,
    [ExpiryDate]                          DATE           NULL,
    [InsertDateTime]                      DATETIME2 (7)  NULL,
    [UpdateDateTime]                      DATETIME2 (7)  NULL,
    [BatchID]                             BIGINT         NOT NULL,
    [ProcessLogID]                        BIGINT         NULL,
    CONSTRAINT [PK_D_Order] PRIMARY KEY CLUSTERED ([D_Order_Skey] ASC) WITH (FILLFACTOR = 80)
);






GO
CREATE NONCLUSTERED INDEX [NI_D_Order_Order_ID_ISACTUAL]
    ON [DM].[D_Order]([Order_ID] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

