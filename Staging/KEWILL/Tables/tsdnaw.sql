CREATE TABLE [KEWILL].[tsdnaw] (
    [dosvlg]       BIGINT        NOT NULL,
    [tsroln]       TINYINT       NOT NULL,
    [zoek]         NVARCHAR (20) NULL,
    [relnr]        BIGINT        NULL,
    [tsnam1]       NVARCHAR (35) NULL,
    [tsnam2]       NVARCHAR (35) NULL,
    [tsnam3]       NVARCHAR (35) NULL,
    [tsadr1]       NVARCHAR (35) NULL,
    [tsadr2]       NVARCHAR (35) NULL,
    [tsadr3]       NVARCHAR (35) NULL,
    [tscity]       NVARCHAR (35) NULL,
    [deskod]       NVARCHAR (5)  NULL,
    [tscsei]       NVARCHAR (9)  NULL,
    [postun]       NVARCHAR (9)  NULL,
    [land]         NVARCHAR (3)  NULL,
    [taalk]        TINYINT       NULL,
    [tsemad]       NVARCHAR (50) NULL,
    [tsinad]       NVARCHAR (50) NULL,
    [asbtwn]       NVARCHAR (17) NULL,
    [kontps]       NVARCHAR (15) NULL,
    [telnr]        NVARCHAR (20) NULL,
    [telex]        NVARCHAR (20) NULL,
    [telfax]       NVARCHAR (20) NULL,
    [tstapk]       SMALLINT      NULL,
    [srtnaw]       TINYINT       NULL,
    [fill12]       NVARCHAR (12) NULL,
    [tscit2]       NVARCHAR (35) NULL,
    [tstfch]       NCHAR (1)     NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_tsdnaw] PRIMARY KEY NONCLUSTERED ([dosvlg] ASC, [tsroln] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'time frame change ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tstfch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'city name 2       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tscit2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'filler-12', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'fill12';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type of address', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'srtnaw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'postcode tariff   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tstapk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'telefax number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'telfax';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'telex number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'telex';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'telephone number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'telnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'contact person', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'kontps';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'VAT id number     as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'asbtwn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'internet address  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsinad';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'e-mail address    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsemad';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'language code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'taalk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'land';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'universal postcode', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'postun';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country sub-ent id', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tscsei';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'destination code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'deskod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'city name         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tscity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'address line 3    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsadr3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'address line 2    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsadr2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'address line 1    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsadr1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'name line 3       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsnam3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'name line 2       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsnam2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'name line 1       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsnam1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relation-number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'relnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'searchname', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'zoek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code role of NAD  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'tsroln';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipment-sequence-nr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdnaw', @level2type = N'COLUMN', @level2name = N'dosvlg';

