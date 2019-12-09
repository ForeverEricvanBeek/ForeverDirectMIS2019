Imports System
Imports System.Data
Imports System.Math
Imports Microsoft.SqlServer.Dts.Runtime
Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.Net
Imports System.Collections.Generic
Imports System.Data.OleDb
Imports System.Text
Imports System.Text.RegularExpressions
Imports System.IO

<Microsoft.SqlServer.Dts.Tasks.ScriptTask.SSISScriptTaskEntryPointAttribute()>
<System.CLSCompliantAttribute(False)>
Partial Public Class ScriptMain
    Inherits Microsoft.SqlServer.Dts.Tasks.ScriptTask.VSTARTScriptObjectModelBase
    Dim message As String

    Public Sub Main()
        Try
            '' Create a new dataset to store data tables
            Dim ds As New DataSet
            Dim oleDA As New OleDbDataAdapter
            Dim dt1 As New DataTable
            oleDA.Fill(dt1, Dts.Variables("etlResult").Value)

            '' If data tables have rows then add it to the data set
            If dt1 IsNot Nothing AndAlso dt1.Rows.Count > 0 Then
                ds.Tables.Add(dt1)
            End If

            '' Count the number of tables in the data set
            Dim dsCount As Integer = ds.Tables.Count
            Dim str As String = String.Empty
            Dim result As String = Dts.Variables("mailBody").Value.ToString()
            Dim stagingResult As String = Dts.Variables("stagingResult").Value.ToString()
            Dim dwhResult As String = Dts.Variables("dwhResult").Value.ToString()
            ''result = result & ControlChars.NewLine
            '' strBody and strBodyEnd adds the HTML tag information. 
            Dim strBody As String = "<html><body style='font-family: Arial, Helvetica, sans-serif;font-size: 12px;'>" & result.ToString & "<br><br>" & stagingResult.ToString & "<br>" & dwhResult.ToString & "<br><br>"
            Dim strBodyEnd As String = "</body></html>"

            '' The following code captures the results of datatables and buils an html string to dispose as an email
            For x As Integer = 0 To dsCount - 1
                If ds.Tables(x) IsNot Nothing AndAlso ds.Tables(x).Rows.Count > 0 Then
                    Dim strText As String = DataTableToHTMLTable(ds.Tables(x))
                    If x = 0 Then
                        str += strText.ToString()
                    Else
                        If x > 0 Then
                            '' The result sets start with 0 to n-1 (0,1,2,3...Etc.)
                            '' The below statment replaces the captionname and adds a suffix, which is number of result set
                            '' For example, for the 2nd result, the caption would become "CaptionName1"
                            str += "<br>" & Replace(strText.ToString(), "Query Result Set", "Query Result Set" & x)
                        End If
                    End If
                Else
                    str += vbEmpty.ToString
                End If
            Next x

            Dim msg As String = str.ToString
            message = strBody & msg & strBodyEnd
            Mail()   'only email if not empty recordset
            Dts.TaskResult = ScriptResults.Success
        Catch e As Exception
            Dim LockedVariable As Variables = Nothing
            Dts.VariableDispenser.LockOneForWrite("User::ScriptTaskErrorMsg", LockedVariable)
            LockedVariable("User::ScriptTaskErrorMsg").Value = "Error Description: " + e.Message.ToString()
            LockedVariable.Unlock()
            Dts.Events.FireError(0, "Script Task", "Error", String.Empty, 0)
            Dts.TaskResult = ScriptResults.Failure
        End Try
    End Sub

    Public Function DataTableToHTMLTable(ByVal inTable As DataTable) As String
        Dim dString As New StringBuilder
        dString.Append("<style scoped>.myTable { background-color:#f4f4f4; width:900px;font-family: Arial, Helvetica, sans-serif;font-size: 12px;}.myTable th { background-color:#f4f4f4;color:black;text-align:left; }.myTable td, .myTable th { padding:0px;border:0px solid #000000; }</style>")
        dString.Append("<table class=myTable> ")
        dString.Append(GetHeader(inTable))
        dString.Append(GetBody(inTable))
        dString.Append("</table>")
        Return dString.ToString
    End Function

    Private Function GetHeader(ByVal dTable As DataTable) As String
        Dim dString As New StringBuilder
        dString.Append("<thead><tr>")
        For Each dColumn As DataColumn In dTable.Columns
            dString.AppendFormat("<th>{0}</th>", dColumn.ColumnName)
        Next
        dString.Append("</tr></thead>")
        Return dString.ToString
    End Function

    Private Function GetBody(ByVal dTable As DataTable) As String
        Dim dString As New StringBuilder
        dString.Append("<tbody>")
        For Each dRow As DataRow In dTable.Rows
            dString.Append("<tr>")
            For dCount As Integer = 0 To dTable.Columns.Count - 1
                dString.AppendFormat("<td>{0}</td>", dRow(dCount))
            Next
            dString.Append("</tr>")
        Next
        dString.Append("</tbody>")
        Return dString.ToString()
    End Function

    Public Sub Mail()
        ''Variable Declaration
        Dim Mail As MailMessage
        Dim Client As SmtpClient
        Dim EmailFrom As String = Dts.Variables("mailFrom").Value.ToString()
        Dim EmailTo As String = Dts.Variables("mailTo").Value.ToString()
        Dim EmailSubject As String = Dts.Variables("mailSubject").Value.ToString()
        Dim EmailCc As String = Dts.Variables("mailCC").Value.ToString()
        Dim From As New MailAddress(EmailFrom.ToString)
        Mail = New MailMessage(From.ToString, EmailTo.ToString, EmailSubject.ToString, message)
        Client = New SmtpClient(Dts.Variables("smtp").Value.ToString())
        Client.Credentials = CredentialCache.DefaultNetworkCredentials

        Mail.IsBodyHtml = True
        Mail.CC.Add(EmailCc)
        Client.Send(Mail)
    End Sub

    Enum ScriptResults
        Success = Microsoft.SqlServer.Dts.Runtime.DTSExecResult.Success
        Failure = Microsoft.SqlServer.Dts.Runtime.DTSExecResult.Failure
    End Enum

End Class