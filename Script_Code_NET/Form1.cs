using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Net;
using System.Web.Script.Serialization;

namespace Script_Code
{
    class jSonObject
    {
        public void CreateNewOutputRows()
        {
            string jsonString = "{\"pageNumber\":1,\"pageSize\":100,\"totalPages\":1,\"totalCount\":2,\"data\":[{\"id\":5050017632282500,\"name\":\"Sheet2\",\"accessLevel\":\"OWNER\",\"permalink\":\"https://app.smartsheet.com/sheets/V5Q5F3GX6hGPXGgr53Rc9PXjrVM7gx5Qp2cGXv71\",\"createdAt\":\"2020-02-27T10:46:25Z\",\"modifiedAt\":\"2020-02-27T10:46:38Z\"},{\"id\":5663691149469572,\"name\":\"Test\",\"accessLevel\":\"OWNER\",\"permalink\":\"https://app.smartsheet.com/sheets/5cQ6chfqxcMxWHWf8xqvw2fmGvrHF2g736RV5m41\",\"createdAt\":\"2020-02-25T05:54:57Z\",\"modifiedAt\":\"2020-02-25T05:55:33Z\"}]}";
            JavaScriptSerializer sr = new JavaScriptSerializer();
            WorkGroupMetric[] outPutMetrics = sr.Deserialize<WorkGroupMetric[]>(jsonString.Trim('"'));

            foreach (var metric in outPutMetrics)
            {
                MessageBox.Show("Looping");
                //Output0Buffer.AddRow();
                //Output0Buffer.pageNumber = metric.pageNumber;
                //Output0Buffer.pageSize = metric.pageSize;
            }
        }
    }
}

class WorkGroupMetric
{
    public int pageNumber { get; set; }
    public int pageSize { get; set; }
    public int totalPages { get; set; }
    public int totalCount { get; set; }
    public List<sheetData> data { get; set; }

}

class sheetData
{
    public object id { get; set; }
    public string name { get; set; }
    public string accessLevel { get; set; }
    public string permalink { get; set; }
    public DateTime createdAt { get; set; }
    public DateTime modifiedAt { get; set; }
}
