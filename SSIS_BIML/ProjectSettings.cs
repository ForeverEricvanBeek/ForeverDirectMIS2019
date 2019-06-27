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
string projectDatabaseInstanceName = @"DWHDEV"; // Only the instance name, don't include the server name.
string SystemConnection = "DWH_Control";
string StagingConnection = "Staging";
string projectServerNameAndDatabaseInstanceName = projectServerName + @"\" + projectDatabaseInstanceName;
string projectAfasToken = "<![CDATA[<token><version>1</version><data>36E1A44E74D248608E5D788DF163B9A5CF0BAA3B4F852FBB230F28AA2E930A74</data></token>]]>"; //<token><version>1</version><data>36E1A44E74D248608E5D788DF163B9A5CF0BAA3B4F852FBB230F28AA2E930A74</data></token>
string projectAfasOptions = "<![CDATA[<Options><Outputmode>1</Outputmode><Metadata>false</Metadata><Outputoptions>2</Outputoptions></Options>]]>";
string GeneratorSchemaName = @"generator";
string conGeneratorConnectionString = @"Data Source=" + projectServerNameAndDatabaseInstanceName + @";Initial Catalog=" + SystemConnection + "; Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;";

string EffectiveDate = "1900-01-01 00:00:00";
string ExpiryDate = "9999-12-31 23:59:59";
string AllCharacterDataTypes = "-nvarchar-varchar-nchar-char-String-AnsiString-StringFixedLength-AnsiStringFixedLength-";
string AllNumericDataTypes = "-decimal-numeric-float-Decimal-Double-";
string AllIntegerDataTypes = "-INT    -smallint-int-bigint-Int8-Int16-Int32-Int64-";
string AllDateDataTypes = "-date-datetime-smalldatetime-Date-DateTime-";
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
#>