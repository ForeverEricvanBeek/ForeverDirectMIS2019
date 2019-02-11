CREATE TABLE [KEWILL].[tsccpc] (
    [rnropd]       BIGINT        NOT NULL,
    [artkd]        NVARCHAR (35) NOT NULL,
    [land]         NVARCHAR (3)  NOT NULL,
    [jdatum]       NVARCHAR (50) NOT NULL,
    [sagnr]        NVARCHAR (22) NULL,
    [tsexsg]       NVARCHAR (22) NULL,
    [comkod]       NVARCHAR (4)  NOT NULL,
    [fill26]       NVARCHAR (26) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_tsccpc] PRIMARY KEY CLUSTERED ([rnropd] ASC, [artkd] ASC, [comkod] ASC, [land] ASC, [jdatum] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_KEWILL]
) ON [DWH_KEWILL];






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-26', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsccpc', @level2type = N'COLUMN', @level2name = N'fill26';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code commodity items', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsccpc', @level2type = N'COLUMN', @level2name = N'comkod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'export Sagitta nr.ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsccpc', @level2type = N'COLUMN', @level2name = N'tsexsg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'commodity code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsccpc', @level2type = N'COLUMN', @level2name = N'sagnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'yy/mm/dd-date', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsccpc', @level2type = N'COLUMN', @level2name = N'jdatum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsccpc', @level2type = N'COLUMN', @level2name = N'land';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsccpc', @level2type = N'COLUMN', @level2name = N'artkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsccpc', @level2type = N'COLUMN', @level2name = N'rnropd';

