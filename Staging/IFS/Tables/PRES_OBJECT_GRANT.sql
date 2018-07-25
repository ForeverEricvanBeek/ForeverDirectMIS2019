CREATE TABLE [IFS].[PRES_OBJECT_GRANT] (
    [PO_ID]        NVARCHAR (200)  NOT NULL,
    [ROLE]         NVARCHAR (60)   NOT NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL
);

