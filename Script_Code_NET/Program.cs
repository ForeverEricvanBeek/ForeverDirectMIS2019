using System;
using System.IO;
using System.Net;
using System.Data;
using System.Text;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Web.Script.Serialization;
//using Microsoft.SqlServer.Dts.Runtime;
//using Microsoft.SqlServer.Dts.Pipeline.Wrapper;
//using Microsoft.SqlServer.Dts.Runtime.Wrapper;
using Newtonsoft.Json;

//[Microsoft.SqlServer.Dts.Pipeline.SSISScriptComponentEntryPointAttribute]
public class ScriptMain
{


    public void CreateNewOutputRows()
    {
        //string Bearer = Variables.Bearer;
        //string wUrl = Variables.Url;

        try
        {
            //string jsonString = "{\"pageNumber\":1,\"pageSize\":100,\"totalPages\":1,\"totalCount\":2,\"data\":[{\"id\":5050017632282500,\"name\":\"Sheet2\",\"accessLevel\":\"OWNER\",\"permalink\":\"https://app.smartsheet.com/sheets/V5Q5F3GX6hGPXGgr53Rc9PXjrVM7gx5Qp2cGXv71\",\"createdAt\":\"2020-02-27T10:46:25Z\",\"modifiedAt\":\"2020-02-27T10:46:38Z\"},{\"id\":5663691149469572,\"name\":\"Test\",\"accessLevel\":\"OWNER\",\"permalink\":\"https://app.smartsheet.com/sheets/5cQ6chfqxcMxWHWf8xqvw2fmGvrHF2g736RV5m41\",\"createdAt\":\"2020-02-25T05:54:57Z\",\"modifiedAt\":\"2020-02-25T05:55:33Z\"}]}";
            string jsonString = "{\"pageNumber\":1,\"pageSize\":100,\"totalPages\":1,\"totalCount\":2}";

            //JavaScriptSerializer sr = new JavaScriptSerializer();
            //WorkGroupMetric[] outPutMetrics = sr.Deserialize<WorkGroupMetric[]>(jsonString/*.Trim('"')*/);

            //var resultArray = new JavaScriptSerializer().Deserialize<WorkGroupMetric[]>(jsonString);

            //var Sheets = resultArray;
            dynamic Sheets = JsonConvert.DeserializeObject(jsonString);


            foreach (var metric in Sheets)
            {
                MessageBox.Show("Looping");
                //Output0Buffer.AddRow();
                //Output0Buffer.pageNumber = metric.pageNumber;
                //Output0Buffer.pageSize = metric.pageSize;
            }

            /*WorkGroupMetric[] outPutMetrics = GetWebServiceResult(wUrl, Bearer);

            //string tijdelijk = GetWebServiceResult(wUrl, Bearer);
            //MessageBox.Show(tijdelijk);

            
            foreach (var metric in outPutMetrics) {
                MessageBox.Show("Looping");
                Output0Buffer.AddRow();
                Output0Buffer.pageNumber = metric.pageNumber;
                Output0Buffer.pageSize = metric.pageSize;
            }
            */

        }
        catch (Exception e)
        {
            //FailComponent(e.ToString());
        }

    }

    static void main()
    {
        Console.WriteLine("FuckIT");
        MessageBox.Show("Looping"); //CreateNewOutputRows();

    }

}
