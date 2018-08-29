/*
using System;
using System.Data;
using System.Globalization;

namespace ST_5018c48148b4404da4000b7c59935e52
{
    public partial class ScriptMain
    {
        public void Main()
        {
            string runSchedule = "M";
            string runParam1 = "05";
            string runParam3 = "thu,fri";
            string runParam2 = "00";
            bool isRun = false;

            DateTime datevalue = DateTime.Now;

            int dy = datevalue.Day;
            int mn = datevalue.Month;
            int yy = datevalue.Year;
            String dw = datevalue.DayOfWeek.ToString("ddd");

            if (runSchedule == "Y")
            {
                // Yearly schedule run when day equals param1 and month equals param 2
                if (Int32.Parse(runParam1) == dy && Int32.Parse(runParam2) == mn)
                {
                    isRun = true;
                }
            }
            else if (runSchedule == "Q")
            {
                // Quarterly schedule run when day equals param1 and month equals param2 (or param2 +3 +6 +9)
                if (Int32.Parse(runParam1) == dy && (Int32.Parse(runParam2) == mn || Int32.Parse(runParam2) == mn + 3 || Int32.Parse(runParam2) == mn + 6 || Int32.Parse(runParam2) == mn + 9))
                {
                    isRun = true;
                }
            }
            else if (runSchedule == "M")
            {
                // Montly schedule run when Param1 equals Day
                if (dy == Int32.Parse(runParam1))
                {
                    isRun = true;
                }
            }
            else if (runSchedule == "W")
            {
                // Weekly schedule run when param1 equals the day of the week
                // Start by splitting runParam1 to an aray
                string[] days = runParam3.Split(',');
                for (int i = 0; i < days.Length; i++)
                {
                    if (days[i] == dw)
                    {
                        isRun = true;
                    }
                }
            }
            else if (runSchedule == "D")
            {
                // Daily schedule, always run
                isRun = true;
            }
            else if (runSchedule == "H")
            {
                // Manually schedule so never run
                isRun = false;
            }
            else
            {
                // Not defined so never run
                isRun = false;
            }

            if (isRun)
            {
                
            }
            else
            {
                
            }
        }
    }
}
*/