
CREATE VIEW [_VW_BiML_sqlSourceExtractionTable]
AS

with COLUMN_CONSTRAINTS(TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME)
                                            AS
                                            (
                                            select TC.TABLE_SCHEMA COLLATE SQL_Latin1_General_CP1_CS_AS, TC.TABLE_NAME COLLATE SQL_Latin1_General_CP1_CS_AS  , COLUMN_NAME COLLATE SQL_Latin1_General_CP1_CS_AS  
                                            from [Staging].[INFORMATION_SCHEMA].[TABLE_CONSTRAINTS] TC
                                            JOIN [Staging].[INFORMATION_SCHEMA].[CONSTRAINT_COLUMN_USAGE] CCL
                                            ON	TC.CONSTRAINT_CATALOG	= CCL.CONSTRAINT_CATALOG
                                            AND	TC.CONSTRAINT_SCHEMA	= CCL.CONSTRAINT_SCHEMA
                                            AND TC.CONSTRAINT_NAME		= CCL.CONSTRAINT_NAME
                                            )
                                            ,CONSTRAINTS(TABLE_SCHEMA, TABLE_NAME, PK)
                                            AS
                                            (
                                            select distinct T1.TABLE_SCHEMA COLLATE SQL_Latin1_General_CP1_CS_AS  , T1.TABLE_NAME COLLATE SQL_Latin1_General_CP1_CS_AS ,
                                              STUFF((SELECT  ',' + T2.COLUMN_NAME
                                                     from COLUMN_CONSTRAINTS T2
                                                     where T1.TABLE_SCHEMA COLLATE SQL_Latin1_General_CP1_CS_AS = T2.TABLE_SCHEMA COLLATE SQL_Latin1_General_CP1_CS_AS AND T1.TABLE_NAME COLLATE SQL_Latin1_General_CP1_CS_AS = T2.TABLE_NAME COLLATE SQL_Latin1_General_CP1_CS_AS
                                                        FOR XML PATH('')),1 ,1, '')    PK
                                            from COLUMN_CONSTRAINTS T1
                                            )
                                            SELECT   ST.[SourceConnection]
                                                      ,ST.[SourceSchema]
                                                      ,ST.[SourceTable]
                                                      ,SC.[Type]                AS [SourceType]
                                                      ,SC.[Options]
                                                      ,SC.[ConnectionString]
                                                      ,ST.[ExtractionType]
                                                      ,ST.[TargetConnection]
                                                      ,ST.[TargetSchema]
                                                      ,ST.[TargetTable]
                                                      ,ST.[IncrementalSchema]
                                                      ,ST.[IncrementalTable]
                                                      ,ST.[IncrementalUpdateColumn]
                                                      ,ST.[IncrementalKeyColumn]
                                                      ,ST.[IsStaging] 
													  ,CS.PK						AS [PrimaryKey]
                                                      ,CASE 
                                                           WHEN [IsStaging] = '1'
                                                           THEN 'STG'
                                                           ELSE 'EXTR'
                                                       END                      AS PackagePrefix
                                                       ,ST.[WhereStatement]
                                              FROM      [Generator].[SourceExtractionTable] ST
                                              LEFT JOIN [Generator].[Connection]            SC
                                              ON        ST.[SourceConnection] = SC.[Name]
											  LEFT JOIN CONSTRAINTS CS
											  ON		ST.[TargetSchema] = CS.[TABLE_SCHEMA]
											  AND		ST.[TargetTable]  = CS.[TABLE_NAME]
                                              WHERE     ST.[IsActive] = 1