CREATE TABLE [WEB].[Complaint] (
    [Complaint_ID]                      BIGINT          NOT NULL,
    [Complaint_Datum]                   DATE            NULL,
    [Complaint_Pos]                     NVARCHAR (50)   NULL,
    [Complaint_Order]                   NVARCHAR (50)   NULL,
    [Complaint_Complaint]               NVARCHAR (255)  NULL,
    [Complaint_Details]                 NVARCHAR (4000) NULL,
    [Complaint_DetailsShort]            NVARCHAR (4000) NULL,
    [Complaint_DetailsTranslated]       NVARCHAR (4000) NULL,
    [Complaint_ItemOrdered]             NVARCHAR (50)   NULL,
    [Complaint_ItemReceived]            NVARCHAR (50)   NULL,
    [Complaint_QuantityOrdered]         INT             NULL,
    [Complaint_QuantityReceived]        INT             NULL,
    [Complaint_Number]                  NVARCHAR (50)   NULL,
    [Complaint_Facility]                NVARCHAR (50)   NULL,
    [Complaint_Olpn]                    NVARCHAR (50)   NULL,
    [Complaint_Customer]                NVARCHAR (50)   NULL,
    [Complaint_ItemOrderedReported]     NVARCHAR (50)   NULL,
    [Complaint_ItemReceivedReported]    NVARCHAR (50)   NULL,
    [Complaint_BatchOrdered]            NVARCHAR (50)   NULL,
    [Complaint_CreditNote]              NVARCHAR (255)  NULL,
    [Complaint_ServiceOrder]            NVARCHAR (255)  NULL,
    [Complaint_CarrierDamage]           NVARCHAR (255)  NULL,
    [Complaint_TrackandTrace]           NVARCHAR (255)  NULL,
    [Complaint_CustomerServiceOperator] NVARCHAR (255)  NULL,
    [Complaint_Conterminator]           NVARCHAR (50)   NULL,
    [Complaint_PosOrig]                 NVARCHAR (50)   NULL,
    [Complaint_OrderOrig]               NVARCHAR (50)   NULL,
    [Complaint_TrackandTraceOrig]       NVARCHAR (50)   NULL,
    [Complaint_ItemOrderedOrig]         NVARCHAR (50)   NULL,
    [Complaint_Orig]                    NVARCHAR (50)   NULL,
    [Complaint_Facility_Orig]           NVARCHAR (50)   NULL,
    [Complaint_Checked]                 CHAR (1)        NULL,
    [Complaint_Incomplete]              CHAR (1)        NULL,
    [Complaint_IncompleteDesc]          NVARCHAR (4000) NULL,
    [Complaint_CreatedDate]             DATETIME2 (7)   NULL,
    [Complaint_CreatedBy]               NVARCHAR (255)  NULL,
    [Complaint_UpdatedDate]             DATETIME2 (7)   NULL,
    [Complaint_UpdatedBy]               NVARCHAR (255)  NULL,
    [Eff_Date]                          DATE            NOT NULL,
    [End_Date]                          DATE            NULL,
    [ActInd]                            CHAR (1)        NULL,
    [IsDeleted]                         CHAR (1)        NULL,
    [BatchID]                           BIGINT          NULL,
    [ProcessLogID]                      BIGINT          NULL,
    CONSTRAINT [PK_Complaints] PRIMARY KEY CLUSTERED ([Complaint_ID] ASC, [Eff_Date] ASC) ON [DWH_WEB]
) ON [DWH_WEB];







