<#
string SSISDeploymentMode = "Project";
string stagingProjectName = @"SSIS_Staging";
string DWHProjectName = @"SSIS_DWH";
string projectServerName = @"FDODWHD01";
string DatamartProjectName = @"SSIS_Datamart";
string projectWorkDir = @"\\FDODWHD01\StagingFiles";
string CacheDir = projectWorkDir + @"\Biml\SSIS Cache";
string ImportDir = projectWorkDir + @"\Biml";
string ExportDir = projectWorkDir + @"\Biml\Output";
string ArchiveDir = projectWorkDir + @"\Biml\Archive";
string ErrorDir = projectWorkDir + @"\Biml\Error";
string projectDatabaseInstanceName = @"DWHDEV"; // Only the instance name, don't include the server name.
string SystemConnection = "DWH_Control";
string StagingConnection = "Staging";
string WarehouseConnection = "DWH";
string DatamartConnection = "Datamart";
string SystemDBName = "DWH_Control";
string StagingDBName = "Staging";
string DWHDBName = "DWH";
string DatamartDBName = "Datamart";

string projectServerNameAndDatabaseInstanceName = "";

if (projectDatabaseInstanceName.Length == 0)
{
     projectServerNameAndDatabaseInstanceName = projectServerName;
}
else
{
     projectServerNameAndDatabaseInstanceName = projectServerName + @"\" + projectDatabaseInstanceName;
}

string GeneratorSchemaName = @"biml";
string conGeneratorConnectionString = @"Data Source=" + projectServerNameAndDatabaseInstanceName + @";Initial Catalog=" + SystemDBName + "; Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;";

string EffectiveDate = "1900-01-01 00:00:00";
string ExpiryDate = "9999-12-31 23:59:59";
string AllCharacterDataTypes = "-nvarchar-varchar-nchar-char-String-AnsiString-StringFixedLength-AnsiStringFixedLength-sysname-";
string AllNumericDataTypes = "-decimal-numeric-";
string AllRealDateTypes = "-float-Real-";
string AllIntegerDataTypes = "-INT-smallint-int-bigint-Int8-Int16-Int32-Int64-";
string AllDateDataTypes = "-date-datetime-smalldatetime-Date-DateTime-datetime2-time-";
string AllBooleanDataTypes = "-bit-";
string AllBinaryDataTypes = "-varbinary-";
string ProjectConnectionOption = "CreateInProject=\"true\"";
string ProjectProtectionLevel = "DontSaveSensitive"; //"EncryptSensitiveWithUserKey";

// source, incremental / modified key column seperator
string[] varKeyColumnSeparator = new string[] { "&&" };

// error and check variables
string varSourceExtractErrorType = "P";  // R(ows) or P(ercentage)
int varSourceExtractErrorThreshold = 5;
string varCheckHeaderFlatFile = "Y"; // Y(es) or N(o)
string varCheckHeaderProgram = "E:\\\\Check-Header.ps1";

// flatfile options
string[] varOptionSeparator = new string[] { "&&" };
string[] varColumnSeparator = new string[] { "=" };
string varFlatFileAttributesList = "-FlatFileType-ColumnNamesInFirstDataRow-HeaderRowDelimiter-HeaderRowsToSkip-DataRowsToSkip-IsUnicode-RowDelimiter-TextQualifer-";
// for future use not implemented yet
string varFlatFileErrorTarget = "database";  // database or flatfile

// lookup
string[] varSeparatorColumns = new string[] { "&&" };
string[] varSeparatorColumn = new string[] { "=" };

string varSQLServTableBeginCharacter = "[";
string varSQLServTableCloseCharacter = "]";
string varSQLServColumnBeginCharacter = "[";
string varSQLServColumnCloseCharacter = "]";
string varEscapeCharacter = "&#92;";
string varOracleObjectBeginEndCharacter = "&quot;";
string varODBCObjectBeginEndCharacter = "&quot;";

string varCR = "&#13;";		// carriage return

string varDWHDefaultColumnsWithType = @",[CheckSum]                        VARBINARY(MAX)
                                            ,[CheckSumSCD1]                    VARBINARY(MAX)
                                            ,[CheckSumSCD2]                    VARBINARY(MAX)
                                            ,[IsActual]                        BIT
                                            ,[IsInferred]                      BIT
                                            ,[IsDeleted]                       BIT
                                            ,[EffectiveDate]                   DATETIME2(7)
                                            ,[ExpiryDate]                      DATETIME2(7)
                                            ,[InsertDateTime]                  DATETIME2(7)
                                            ,[UpdateDateTime]                  DATETIME2(7)
                                            ,[BatchID]                         BIGINT
                                            ,[ProcessLogID]                    BIGINT";

string varDWHDefaultColumnsList = @",[CheckSum]
                                            ,[CheckSumSCD1]
                                            ,[CheckSumSCD2]
                                            ,[IsActual]
                                            ,[IsInferred]
                                            ,[IsDeleted]
                                            ,[EffectiveDate]
                                            ,[ExpiryDate]
                                            ,[InsertDateTime]
                                            ,[UpdateDateTime]
                                            ,[BatchID]
                                            ,[ProcessLogID]";


#>