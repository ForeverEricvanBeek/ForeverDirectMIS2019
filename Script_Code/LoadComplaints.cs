/*
using System;
using System.Data;
using Microsoft.SqlServer.Dts.Runtime;
using System.Windows.Forms;
using System.IO;

namespace ST_f1b41172c66a4ffbabb05ccfbc392398
{
	[Microsoft.SqlServer.Dts.Tasks.ScriptTask.SSISScriptTaskEntryPointAttribute]
	public partial class ScriptMain : Microsoft.SqlServer.Dts.Tasks.ScriptTask.VSTARTScriptObjectModelBase
    {
        public void Main()
		{
            // TODO: Add your code here
            string filenpathame = Dts.Variables["User::workingfiletemp"].Value.ToString();
            string filename = Path.GetFileNameWithoutExtension(filenpathame);
            Dts.Variables["User::workingfilename"].Value = filename;
            Dts.TaskResult = (int)ScriptResults.Success;

        }

        enum ScriptResults
        {
            Success = Microsoft.SqlServer.Dts.Runtime.DTSExecResult.Success,
            Failure = Microsoft.SqlServer.Dts.Runtime.DTSExecResult.Failure
        };

	}
}
*/