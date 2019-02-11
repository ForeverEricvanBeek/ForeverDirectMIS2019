CREATE TABLE [SCHAEFER].[Repack] (
    [Order]         NVARCHAR (50) NOT NULL,
    [Page]          SMALLINT      NOT NULL,
    [OLPN]          NVARCHAR (50) NOT NULL,
    [Status]        SMALLINT      NULL,
    [Lane]          SMALLINT      NULL,
    [Type]          SMALLINT      NULL,
    [User]          NVARCHAR (50) NULL,
    [TimeAnnounced] NVARCHAR (50) NOT NULL,
    [TimeIn]        NVARCHAR (50) NULL,
    [TimeOut]       NVARCHAR (50) NULL,
    [Error]         NVARCHAR (50) NULL,
    [Lines]         SMALLINT      NULL,
    [Eaches]        SMALLINT      NULL,
    [Empty]         NVARCHAR (50) NULL,
    [Eff_Date]      DATE          NOT NULL,
    [End_Date]      DATE          NULL,
    [ActInd]        CHAR (1)      NULL,
    [IsDeleted]     CHAR (1)      NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    CONSTRAINT [PK_Repack] PRIMARY KEY CLUSTERED ([Order] ASC, [Page] ASC, [OLPN] ASC, [TimeAnnounced] ASC, [Eff_Date] ASC) ON [DWH_SCHAEFER]
) ON [DWH_SCHAEFER];





