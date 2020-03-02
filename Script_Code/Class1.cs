/*
using System;
using System.Collections.Generic;
using System.Text;

namespace Script_Code
{
    class DatabaseConnectTest
    {

        string oradb = "Data Source=MHNT5;User Id=WMS15TSTRW;Password=WMS15TSTRW;";
        OracleConnection conn = new OracleConnection(oradb);

        conn.Open();
            OracleCommand cmd = new OracleCommand();
        cmd.Connection = conn;
            cmd.CommandText = "SELECT 1 FROM DUAL"; cmd.CommandType = CommandType.Text;
            OracleDataReader dr = cmd.ExecuteReader();
        dr.Read();
            System.Windows.Forms.MessageBox.Show(dr.GetString(0));
            conn.Dispose();
    }
}
*/