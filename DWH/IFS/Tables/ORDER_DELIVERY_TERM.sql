CREATE TABLE [IFS].[ORDER_DELIVERY_TERM] (
    [DELIVERY_TERMS]              NVARCHAR (3)    NOT NULL,
    [DESCRIPTION]                 NVARCHAR (35)   NULL,
    [CALCULATE_FREIGHT_CHARGE]    NVARCHAR (4000) NULL,
    [CALCULATE_FREIGHT_CHARGE_DB] NVARCHAR (20)   NULL,
    [COLLECT_FREIGHT_CHARGE]      NVARCHAR (4000) NULL,
    [COLLECT_FREIGHT_CHARGE_DB]   NVARCHAR (20)   NULL,
    [OBJID]                       NVARCHAR (4000) NULL,
    [OBJVERSION]                  NVARCHAR (2000) NULL,
    [Eff_Date]                    DATE            NOT NULL,
    [End_Date]                    DATE            NULL,
    [ActInd]                      CHAR (1)        NULL,
    [IsDeleted]                   CHAR (1)        NULL,
    [BatchID]                     BIGINT          NULL,
    [ProcessLogID]                BIGINT          NULL,
    CONSTRAINT [PK_ORDER_DELIVERY_TERM] PRIMARY KEY CLUSTERED ([DELIVERY_TERMS] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];

