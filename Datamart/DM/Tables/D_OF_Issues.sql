CREATE TABLE [DM].[D_OF_Issues] (
    [D_OF_Issues_Skey]             BIGINT         IDENTITY (1, 1) NOT NULL,
    [OF_Issues_ID]                 NVARCHAR (50)  NOT NULL,
    [OF_Issues_Date]               DATETIME2 (7)  NULL,
    [OF_Issues_Order_ID]           NVARCHAR (50)  NULL,
    [OF_Issues_OLPN_ID]            NVARCHAR (50)  NULL,
    [OF_Issues_Box_Type]           NVARCHAR (100) NULL,
    [OF_Issues_Allocated_Item]     NVARCHAR (20)  NULL,
    [OF_Issues_Picked_Item]        NVARCHAR (20)  NULL,
    [OF_Issues_Location_Allocated] NVARCHAR (20)  NULL,
    [OF_Issues_Location_Picked]    NVARCHAR (20)  NULL,
    [OF_Issues_Allocated_Qty]      INT            NULL,
    [OF_Issues_Qty]                INT            NULL,
    [OF_Issues_Picker_ID]          NVARCHAR (50)  NULL,
    [OF_Issues_Picker_Name]        NVARCHAR (300) NULL,
    [OF_Issues_QA_operator]        NVARCHAR (255) NULL,
    [OF_Issues_Error]              NVARCHAR (50)  NULL,
    [OF_Issues_Error_Type]         NVARCHAR (50)  NULL,
    [OF_Issues_Comments]           NVARCHAR (MAX) NULL,
    [CheckSum]                     NVARCHAR (32)  NULL,
    [CheckSumSCD1]                 NVARCHAR (32)  NULL,
    [CheckSumSCD2]                 NVARCHAR (32)  NULL,
    [IsActual]                     INT            NOT NULL,
    [IsInferred]                   INT            NULL,
    [IsDeleted]                    INT            NULL,
    [EffectiveDate]                DATE           NOT NULL,
    [ExpiryDate]                   DATE           NULL,
    [InsertDateTime]               DATETIME2 (7)  NULL,
    [UpdateDateTime]               DATETIME2 (7)  NULL,
    [BatchID]                      BIGINT         NOT NULL,
    [ProcessLogID]                 BIGINT         NULL,
    CONSTRAINT [D_OF_Issues_Skey] PRIMARY KEY CLUSTERED ([D_OF_Issues_Skey] ASC) WITH (FILLFACTOR = 80)
);


GO
CREATE NONCLUSTERED INDEX [NI_D_OF_Issues_Issues]
    ON [DM].[D_OF_Issues]([OF_Issues_ID] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

