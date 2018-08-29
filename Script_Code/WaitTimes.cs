/*
using System;
using System.Data;
using Microsoft.SqlServer.Dts.Runtime;
using System.Windows.Forms;

namespace ST_c1460709233e45a7af989d19c79a53aa
{
	[Microsoft.SqlServer.Dts.Tasks.ScriptTask.SSISScriptTaskEntryPointAttribute]
	public partial class ScriptMain : Microsoft.SqlServer.Dts.Tasks.ScriptTask.VSTARTScriptObjectModelBase
	{
		public void Main()
		{
            int waitTimes = Convert.ToInt32(Dts.Variables["$Project::WaitTimes"].Value);
     
			System.Threading.Thread.Sleep(waitTimes*1000);
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