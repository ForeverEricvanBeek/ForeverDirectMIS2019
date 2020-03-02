using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using Newtonsoft.Json;


namespace Script_C {
    class Program {
        static void Main(string[] args) {
            Console.WriteLine("Testing json2Array");

            string jsonString = "[{\"id\":5050017632282500,\"name\":\"Sheet2\",\"version\":2,\"totalRowCount\":3,\"accessLevel\":\"OWNER\",\"effectiveAttachmentOptions\":[\"FILE\",\"GOOGLE_DRIVE\",\"EVERNOTE\",\"EGNYTE\",\"BOX_COM\",\"LINK\",\"DROPBOX\",\"ONEDRIVE\"],\"ganttEnabled\":false,\"dependenciesEnabled\":false,\"resourceManagementEnabled\":false,\"cellImageUploadEnabled\":true,\"userSettings\":{\"criticalPathEnabled\":false,\"displaySummaryTasks\":true},\"userPermissions\":{\"summaryPermissions\":\"ADMIN\"},\"hasSummaryFields\":false,\"permalink\":\"https://app.smartsheet.com/sheets/V5Q5F3GX6hGPXGgr53Rc9PXjrVM7gx5Qp2cGXv71\",\"createdAt\":\"2020-02-27T10:46:25Z\",\"modifiedAt\":\"2020-03-02T11:45:11Z\",\"isMultiPicklistEnabled\":true,\"columns\":[{\"id\":5445942829705092,\"version\":0,\"index\":0,\"title\":\"Primary Column\",\"type\":\"TEXT_NUMBER\",\"primary\":true,\"validation\":false,\"width\":150},{\"id\":3194143016019844,\"version\":0,\"index\":1,\"title\":\"Column2\",\"type\":\"TEXT_NUMBER\",\"validation\":false,\"width\":150},{\"id\":7697742643390340,\"version\":0,\"index\":2,\"title\":\"Column3\",\"type\":\"TEXT_NUMBER\",\"validation\":false,\"width\":150},{\"id\":2068243109177220,\"version\":0,\"index\":3,\"title\":\"Column4\",\"type\":\"TEXT_NUMBER\",\"validation\":false,\"width\":150},{\"id\":6571842736547716,\"version\":0,\"index\":4,\"title\":\"Column5\",\"type\":\"TEXT_NUMBER\",\"validation\":false,\"width\":150},{\"id\":4320042922862468,\"version\":0,\"index\":5,\"title\":\"Column6\",\"type\":\"TEXT_NUMBER\",\"validation\":false,\"width\":150}],\"rows\":[{\"id\":2712090729834372,\"rowNumber\":1,\"expanded\":true,\"createdAt\":\"2020-02-27T10:46:38Z\",\"modifiedAt\":\"2020-03-02T11:45:11Z\",\"cells\":[{\"columnId\":5445942829705092,\"value\":\"a\",\"displayValue\":\"a\"},{\"columnId\":3194143016019844,\"value\":\"b\",\"displayValue\":\"b\"},{\"columnId\":7697742643390340,\"value\":\"c\",\"displayValue\":\"c\"},{\"columnId\":2068243109177220,\"value\":\"d\",\"displayValue\":\"d\"},{\"columnId\":6571842736547716,\"value\":\"e\",\"displayValue\":\"e\"},{\"columnId\":4320042922862468,\"value\":\"f\",\"displayValue\":\"f\"}]},{\"id\":168667669915524,\"rowNumber\":2,\"siblingId\":2712090729834372,\"expanded\":true,\"createdAt\":\"2020-03-02T11:45:11Z\",\"modifiedAt\":\"2020-03-02T11:45:11Z\",\"cells\":[{\"columnId\":5445942829705092,\"value\":1.0,\"displayValue\":\"1\"},{\"columnId\":3194143016019844,\"value\":2.0,\"displayValue\":\"2\"},{\"columnId\":7697742643390340,\"value\":3.0,\"displayValue\":\"3\"},{\"columnId\":2068243109177220,\"value\":4.0,\"displayValue\":\"4\"},{\"columnId\":6571842736547716,\"value\":5.0,\"displayValue\":\"5\"},{\"columnId\":4320042922862468,\"value\":6.0,\"displayValue\":\"6\"}]},{\"id\":4672267297286020,\"rowNumber\":3,\"siblingId\":168667669915524,\"expanded\":true,\"createdAt\":\"2020-03-02T11:45:11Z\",\"modifiedAt\":\"2020-03-02T11:45:11Z\",\"cells\":[{\"columnId\":5445942829705092,\"value\":\"!\",\"displayValue\":\"!\"},{\"columnId\":3194143016019844,\"value\":\"@\",\"displayValue\":\"@\"},{\"columnId\":7697742643390340,\"value\":\"#\",\"displayValue\":\"#\"},{\"columnId\":2068243109177220,\"value\":\"$\",\"displayValue\":\"$\"},{\"columnId\":6571842736547716,\"value\":\"%\",\"displayValue\":\"%\"},{\"columnId\":4320042922862468,\"value\":\"%\",\"displayValue\":\"%\"}]}]}]";

            try {
            JavaScriptSerializer sr = new JavaScriptSerializer();
            WorkGroupMetric[] jsonResponse = null;
            jsonResponse = sr.Deserialize<WorkGroupMetric[]>(jsonString);
                
                foreach (var metric in jsonResponse) {
                    foreach (var metric2 in metric.rows) {
                        Console.WriteLine("RowNumber: " + metric2.rowNumber);
                        foreach (var metric3 in metric2.cells) {
                            Console.WriteLine(metric3.columnId);
                        }
                    }
                }

                Console.ReadKey();

            } catch(Exception e) {
                Console.WriteLine(jsonString);
                Console.WriteLine(e);
                Console.ReadKey();
            }
            //var resultArray = new JavaScriptSerializer().Deserialize<WorkGroupMetric[]>(jsonString);
            //var Sheets = resultArray;
            //dynamic Sheets = JsonConvert.DeserializeObject(jsonString);

            
        }
    }
}

public class UserSettings
{
    public bool criticalPathEnabled { get; set; }
    public bool displaySummaryTasks { get; set; }
}

public class UserPermissions
{
    public string summaryPermissions { get; set; }
}

public class Column
{
    public object id { get; set; }
    public int version { get; set; }
    public int index { get; set; }
    public string title { get; set; }
    public string type { get; set; }
    public bool primary { get; set; }
    public bool validation { get; set; }
    public int width { get; set; }
}

public class Cell
{
    public object columnId { get; set; }
    public string value { get; set; }
    public string displayValue { get; set; }
}

public class Row
{
    public long id { get; set; }
    public int rowNumber { get; set; }
    public bool expanded { get; set; }
    public DateTime createdAt { get; set; }
    public DateTime modifiedAt { get; set; }
    public List<Cell> cells { get; set; }
}

public class WorkGroupMetric
{
    public long id { get; set; }
    public string name { get; set; }
    public int version { get; set; }
    public int totalRowCount { get; set; }
    public string accessLevel { get; set; }
    public List<string> effectiveAttachmentOptions { get; set; }
    public bool ganttEnabled { get; set; }
    public bool dependenciesEnabled { get; set; }
    public bool resourceManagementEnabled { get; set; }
    public bool cellImageUploadEnabled { get; set; }
    public UserSettings userSettings { get; set; }
    public UserPermissions userPermissions { get; set; }
    public bool hasSummaryFields { get; set; }
    public string permalink { get; set; }
    public DateTime createdAt { get; set; }
    public DateTime modifiedAt { get; set; }
    public bool isMultiPicklistEnabled { get; set; }
    public List<Column> columns { get; set; }
    public List<Row> rows { get; set; }
}