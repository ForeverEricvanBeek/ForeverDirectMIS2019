CREATE TABLE [IFS].[DOCUMENT_TEXT] (
    [OUTPUT_TYPE]  NVARCHAR (10)   NOT NULL,
    [NOTE_ID]      INT             NOT NULL,
    [NOTE_TEXT]    NVARCHAR (2000) NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_DOCUMENT_TEXT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [NOTE_ID] ASC, [OUTPUT_TYPE] ASC) ON [DWH_IFS]
) ON [DWH_IFS];



