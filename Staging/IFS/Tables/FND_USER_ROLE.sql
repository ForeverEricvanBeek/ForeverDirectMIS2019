CREATE TABLE [IFS].[FND_USER_ROLE] (
    [IDENTITY]     NVARCHAR (30)   NOT NULL,
    [ROLE]         NVARCHAR (30)   NOT NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL
);

