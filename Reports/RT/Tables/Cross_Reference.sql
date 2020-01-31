CREATE TABLE [RT].[Cross_Reference] (
    [CUSTOMER_NO]               NVARCHAR (20)   NULL,
    [NAME]                      NVARCHAR (35)   NULL,
    [SITE]                      NVARCHAR (5)    NULL,
    [SALES_PART_NO]             NVARCHAR (25)   NULL,
    [SALES_PART_DESCRIPTION]    NVARCHAR (200)  NULL,
    [Sales_UoM]                 NVARCHAR (50)   NULL,
    [CONV_FACTOR]               INT             NULL,
    [CUSTOMER_PART]             NVARCHAR (45)   NULL,
    [CUSTOMER_PART_DESCRIPTION] NVARCHAR (200)  NULL,
    [SELF_BILLING]              NVARCHAR (4000) NULL,
    [Request_ID]                BIGINT          NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL
);

