CREATE TABLE [Generator].[LoadReportTablePredicates] (
    [SourceTable]              NVARCHAR (128) NULL,
    [ViewPredicatesName]       NVARCHAR (500) NULL,
    [ViewPredicatesColumn]     NVARCHAR (500) NULL,
    [ViewPredicatesValue]      NVARCHAR (500) NULL,
    [ViewPredicatesExpression] BIT            NULL,
    [IsActive]                 BIT            NULL
);

