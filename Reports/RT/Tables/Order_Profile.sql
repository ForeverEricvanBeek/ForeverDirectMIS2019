CREATE TABLE [RT].[Order_Profile] (
    [Col1]                  NVARCHAR (40)   NULL,
    [Col2]                  NVARCHAR (50)   NULL,
    [Year]                  SMALLINT        NULL,
    [Month]                 TINYINT         NULL,
    [Orders]                INT             NULL,
    [Order_Lines]           INT             NULL,
    [Order_Lines_per_Order] DECIMAL (15, 2) NULL,
    [Pick_Lines]            INT             NULL,
    [Parcels]               INT             NULL,
    [Parcels_per_Order]     DECIMAL (15, 2) NULL,
    [Units]                 INT             NULL,
    [Units_per_Order]       DECIMAL (15, 2) NULL,
    [Order_Type]            NVARCHAR (20)   NULL,
    [OLPN_Weight]           NUMERIC (38, 4) NULL,
    [Rapport_ID]            VARCHAR (1)     NULL,
    [Request_ID]            BIGINT          NULL,
    [BatchID]               BIGINT          NULL,
    [ProcessLogID]          BIGINT          NULL
);

