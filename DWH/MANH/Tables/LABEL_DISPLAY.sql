CREATE TABLE [MANH].[LABEL_DISPLAY] (
    [LABEL_DISPLAY_ID]    INT             NOT NULL,
    [DISP_KEY]            NVARCHAR (500)  NOT NULL,
    [DISP_VALUE]          NVARCHAR (1000) NOT NULL,
    [TO_LANG]             NVARCHAR (10)   NOT NULL,
    [SCREEN_TYPE_ID]      INT             NOT NULL,
    [CREATED_SOURCE]      NVARCHAR (50)   NULL,
    [CREATED_DTTM]        DATE            NOT NULL,
    [LAST_UPDATED_SOURCE] NVARCHAR (50)   NULL,
    [LAST_UPDATED_DTTM]   DATE            NOT NULL,
    [BU_ID]               INT             NOT NULL,
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_MANH_LABEL_DISPLAY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LABEL_DISPLAY_ID] ASC)
);

