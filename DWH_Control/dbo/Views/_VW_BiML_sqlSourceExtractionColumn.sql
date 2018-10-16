
CREATE VIEW [_VW_BiML_sqlSourceExtractionColumn]
AS

SELECT       ISNULL(sc.[SourceColumnName],ic.COLUMN_NAME)		as[SourceColumnName]
                ,ISNULL(sc.[SourceColumnExpression],ic.COLUMN_NAME)	as [SourceColumnExpression]
                ,ISNULL(sc.[SourceColumnType], ic.DATA_TYPE)		as [SourceColumnType]
                ,ISNULL(ISNULL(sc.[SourceColumnLength], ic.CHARACTER_MAXIMUM_LENGTH),0)	as [SourceColumnLength]
                ,ISNULL(ISNULL(sc.[SourceColumnPrecision], ic.NUMERIC_PRECISION),0) as [SourceColumnPrecision]
                ,ISNULL(ISNULL(sc.[SourceColumnScale], ic.NUMERIC_SCALE),0)		as [SourceColumnScale]
                ,ISNULL(sc.[TargetColumnName],ic.COLUMN_NAME)		as [TargetColumnName]
                ,ISNULL(sc.[TargetColumnExpression],ic.COLUMN_NAME) as [TargetColumnExpression]
                ,ISNULL(sc.[TargetColumnType], ic.DATA_TYPE)		as [TargetColumnType]
                ,ISNULL(ISNULL(sc.[TargetColumnLength], ic.CHARACTER_MAXIMUM_LENGTH),0)	as [TargetColumnLength]
                ,ISNULL(ISNULL(sc.[TargetColumnPrecision], ic.NUMERIC_PRECISION),0) as [TargetColumnPrecision]
                ,ISNULL(ISNULL(sc.[TargetColumnScale], ic.NUMERIC_SCALE),0)		as [TargetColumnScale]
                ,CASE
                    WHEN sc.[SourceColumnType]             <> [TargetColumnType]
                    OR   sc.[SourceColumnLength]           <> [TargetColumnLength]
                    OR   sc.[SourceColumnPrecision]        <> [TargetColumnPrecision]
                    OR   sc.[SourceColumnScale]            <> [TargetColumnScale]
                    THEN 1
                    ELSE 0 
                END                 AS [ColumnConversionNecessary]
                ,dc.[DataTypeExpression]
				, ic.ORDINAL_POSITION
				, st.[SourceConnection]
				, st.[SourceSchema]
				, st.[SourceTable]
    FROM         [Staging].INFORMATION_SCHEMA.COLUMNS ic
    INNER JOIN	  [Generator].[SourceExtractionTable] st
    on			  st.TargetSchema = ic.TABLE_SCHEMA and st.TargetTable = ic.TABLE_NAME
    AND          st.[IsActive]                           =  1
    LEFT JOIN	  [Generator].[SourceExtractionColumn] sc
    ON			  sc.TargetColumnName = ic.COLUMN_NAME and sc.SourceSchema = st.SourceSchema and sc.SourceTable = st.SourceTable
    AND          sc.[IsActive]                           =  1
    LEFT JOIN    [Generator].[DataTypeConversion]     dc
    ON           ic.DATA_TYPE collate SQL_Latin1_General_CP1_CS_AS =  [DataType] collate SQL_Latin1_General_CP1_CS_AS
	WHERE		  ic.COLUMN_NAME not in ('BatchID','ProcessLogID')