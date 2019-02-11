CREATE TABLE [MANH_ARC].[SHIP_VIA] (
    [SHIP_VIA_ID]               INT             NOT NULL,
    [TC_COMPANY_ID]             INT             NOT NULL,
    [CARRIER_ID]                BIGINT          NOT NULL,
    [SERVICE_LEVEL_ID]          BIGINT          NOT NULL,
    [MOT_ID]                    BIGINT          NOT NULL,
    [LABEL_TYPE]                NVARCHAR (15)   NULL,
    [SERVICE_LEVEL_ICON]        NVARCHAR (15)   NULL,
    [EXECUTION_LEVEL_ID]        INT             NOT NULL,
    [BILL_SHIP_VIA_ID]          INT             NULL,
    [IS_TRACKING_NBR_REQ]       SMALLINT        NOT NULL,
    [MARKED_FOR_DELETION]       SMALLINT        NOT NULL,
    [DESCRIPTION]               NVARCHAR (150)  NULL,
    [ACCESSORIAL_SEARCH_STRING] NVARCHAR (255)  NULL,
    [INS_COVER_TYPE_ID]         SMALLINT        NULL,
    [MIN_DECLARED_VALUE]        NUMERIC (14, 3) NULL,
    [MAX_DECLARED_VALUE]        NUMERIC (14, 3) NULL,
    [SERVICE_LEVEL_INDICATOR]   NVARCHAR (15)   NULL,
    [DECLARED_VALUE_CURRENCY]   NVARCHAR (3)    NULL,
    [SHIP_VIA]                  NVARCHAR (4)    NOT NULL,
    [Eff_Date]                  DATE            NOT NULL,
    [End_Date]                  DATE            NULL,
    [ActInd]                    CHAR (1)        NULL,
    [IsDeleted]                 CHAR (1)        NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_MANH_SHIP_VIA] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SHIP_VIA_ID] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





