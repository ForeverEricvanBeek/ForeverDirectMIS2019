<#
string SSISDeploymentMode = "Project";
string stagingProjectName = @"SSIS_Staging";
string projectServerName = @"FDODWHD01";
string projectWorkDir = @"\\FDODWHD01\StagingFiles";
string CacheDir = projectWorkDir + @"\Biml\SSIS Cache";
string ImportDir = projectWorkDir + @"\Biml";
string ExportDir = projectWorkDir + @"\Biml\Output";
string ArchiveDir = projectWorkDir + @"\Biml\Archive";
string ErrorDir = projectWorkDir + @"\Biml\Error";
string projectDatabaseInstanceName = @"DWHDEV";
string SystemConnection = "DWH_Control";
string StagingConnection = "Staging";
string projectServerNameAndDatabaseInstanceName = projectServerName + @"\" + projectDatabaseInstanceName;
string projectAfasToken = "<![CDATA[<token><version>1</version><data>36E1A44E74D248608E5D788DF163B9A5CF0BAA3B4F852FBB230F28AA2E930A74</data></token>]]>";
string projectAfasOptions = "<![CDATA[<Options><Outputmode>1</Outputmode><Metadata>false</Metadata><Outputoptions>2</Outputoptions></Options>]]>";
string GeneratorSchemaName = @"generator";
string conGeneratorConnectionString = @"Data Source=" + projectServerNameAndDatabaseInstanceName + @";Initial Catalog=" + SystemConnection + "; Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;";

string IFSstagingProjectName = @"SSIS_StagingIFS";
string IFSprojectServerName = @"FDODWHP01";
string IFSprojectWorkDir = @"\\FDODWHP01\StagingFiles";
string IFSprojectLoadingWhere = @"1";
string IFSprojectDatabaseInstanceName = @"DWHIFS";
string IFSSystemConnection = "DWI_Control";
string IFSStagingConnection = "StagingIFS";
string IFSprojectServerNameAndDatabaseInstanceName = IFSprojectServerName + @"\" + IFSprojectDatabaseInstanceName;
string conIFSGeneratorConnectionString = @"Data Source=" + IFSprojectServerNameAndDatabaseInstanceName + @";Initial Catalog=" + IFSSystemConnection + "; Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;";

string EffectiveDate = "1900-01-01 00:00:00";
string ExpiryDate = "9999-12-31 23:59:59";
string AllCharacterDataTypes = "-nvarchar-varchar-nchar-char-String-AnsiString-StringFixedLength-AnsiStringFixedLength-";
string AllNumericDataTypes = "-decimal-numeric-float-Decimal-Double-";
string AllIntegerDataTypes = "-INT-smallint-int-bigint-Int8-Int16-Int32-Int64-";
string AllDateDataTypes = "-date-datetime-smalldatetime-Date-DateTime-";
string AllBinaryDataTypes = "-varbinary-";
string AllRealDateTypes = "-float-Real-";
string AllBooleanDataTypes = "-bit-";
string ProjectConnectionOption = "CreateInProject=\"true\"";
string ProjectProtectionLevel = "DontSaveSensitive";

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

string varCR = "&#13;";     // carriage return

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