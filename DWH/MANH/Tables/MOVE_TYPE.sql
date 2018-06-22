CREATE TABLE [MANH].[MOVE_TYPE] (
    [MOVE_TYPE]         INT            NOT NULL,
    [DESCRIPTION]       NVARCHAR (50)  NOT NULL,
    [MOVE_TYPE_CODE]    NVARCHAR (3)   NOT NULL,
    [COMMENTS]          NVARCHAR (255) NULL,
    [CREATED_DTTM]      DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7)  NOT NULL,
    [Eff_Date]          DATE           NOT NULL,
    [End_Date]          DATE           NULL,
    [ActInd]            CHAR (1)       NULL,
    [IsDeleted]         CHAR (1)       NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    CONSTRAINT [PK_MANH_MOVE_TYPE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [MOVE_TYPE] ASC)
);

