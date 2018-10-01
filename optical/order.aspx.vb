
Imports System.Net.Mail
Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Services
Imports System.Web.Script.Services
Imports Microsoft.AspNet.Identity

Public Class Contact
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim userName As String = Session("userName")
        lblPatient.Text = userName

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim patient As String = lblPatient.Text

        Dim strDatabase As String
        strDatabase = Server.MapPath("one_optical.mdb")

        ' SQL Command inserts the data into Orders table
        Dim strSQLCommand As String

        strSQLCommand = "INSERT INTO [Orders] (PatientName, RightEye, LeftEye, FrameDetails, FrameStyle, FrameColour, SpecialInstructions, DateSent) " & _
            "VALUES (@PatientName, @RightEye, @LeftEye, @FrameDetails, @FrameStyle, @FrameColour, @SpecialInstructions, @DateSent)"

        ' Open the database connection
        Dim con As System.Data.OleDb.OleDbConnection
        con = New System.Data.OleDb.OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0; Data Source=" & strDatabase)
        con.Open()

        ' Make command (execute non query as not reading data)
        Dim cmd As System.Data.OleDb.OleDbCommand
        cmd = New System.Data.OleDb.OleDbCommand(strSQLCommand, con)
        cmd.Parameters.AddWithValue("@PatientName", lblPatient.Text)
        cmd.Parameters.AddWithValue("@RightEye", ddlRIndex.SelectedValue & "," & ddlRType.SelectedValue & "," & ddlRColour.SelectedValue & "," & ddlRSphere.SelectedValue & "," & _
                                    tbxRAxe.Text & "," & ddlRAddition.SelectedValue & "," & tbxRPrism1.Text & "," & ddlRDir1.SelectedValue & "," & tbxRPrism2.Text & "," & _
                                    ddlRDir2.SelectedValue & "," & ddlRPD.SelectedValue & "," & ddlRFH.SelectedValue)
        cmd.Parameters.AddWithValue("@LeftEye", ddlLIndex.SelectedValue & "," & ddlLType.SelectedValue & "," & ddlLColour.SelectedValue & "," & ddlLSphere.SelectedValue & "," & _
                                    tbxLAxe.Text & "," & ddlLAddition.SelectedValue & "," & tbxLPrism1.Text & "," & ddlLDir1.SelectedValue & "," & tbxLPrism2.Text & "," & _
                                    ddlLDir2.SelectedValue & "," & ddlLPD.SelectedValue & "," & ddlLFH.SelectedValue)
        cmd.Parameters.AddWithValue("@FrameDetails", ddlFrameDetails.SelectedValue)
        cmd.Parameters.AddWithValue("@FrameStyle", tbxFrame.Text)
        cmd.Parameters.AddWithValue("@FrameColour", tbxColour.Text)
        cmd.Parameters.AddWithValue("@SpecialInstructions", tbxSpecial.Text)
        cmd.Parameters.AddWithValue("@DateSent", Date.Now)
        cmd.ExecuteNonQuery()

        ' Close connection
        con.Close()
        
        '    Dim fileID As String = "Order_" & DateTime.Now.ToString("ddMMyyyy") & "_" & DateTime.Now.ToString("HHmmss")
        '    ExportCSV(CreateData(), fileID)
        '    SendMail("info@roswellit.com", "kevin.murphy@roswellit.com", "New Order: " & fileID, "A new order was placed using your online system.", fileID & ".csv")
    End Sub

    'Public Sub ExportCSV(ByVal data As DataTable, ByVal fileName As String)

    '    Dim context As HttpContext = HttpContext.Current

    '    context.Response.Clear()
    '    context.Response.ContentType = "text/csv"
    '    context.Response.AddHeader("Content-Disposition", "attachment; filename=" + fileName + ".csv")

    '    'Write column header names
    '    For i = 0 To data.Columns.Count - 1
    '        If (i > 0) Then
    '            context.Response.Write(",")
    '        End If
    '        context.Response.Write(data.Columns(i).ColumnName)
    '    Next
    '    context.Response.Write(Environment.NewLine)

    '    'Write data
    '    For Each row As DataRow In data.Rows
    '        For i = 0 To data.Columns.Count - 1
    '            If (i > 0) Then
    '                context.Response.Write(",")
    '            End If
    '            context.Response.Write(row.Item(i).ToString())
    '        Next
    '        context.Response.Write(Environment.NewLine)
    '    Next
    '    context.Response.End()

    'End Sub

    'Private Function CreateData() As DataTable

    '    Dim table1 As DataTable
    '    table1 = New DataTable("Customers")

    '    Dim row1, row2, row3 As DataRow

    '    Dim colName As New DataColumn("CustomerName", System.Type.GetType("System.String"))
    '    Dim colCity As New DataColumn("City", System.Type.GetType("System.String"))
    '    table1.Columns.Add(colName)
    '    table1.Columns.Add(colCity)

    '    row1 = table1.NewRow()
    '    row1.Item("CustomerName") = "Microsoft"
    '    row1.Item("City") = "Redmond"
    '    table1.Rows.Add(row1)

    '    row2 = table1.NewRow()
    '    row2.Item("CustomerName") = "Amazon.com"
    '    row2.Item("City") = "Seattle"
    '    table1.Rows.Add(row2)

    '    row3 = table1.NewRow()
    '    row3.Item("CustomerName") = "IBM"
    '    row3.Item("City") = "Armonk"
    '    table1.Rows.Add(row3)

    '    Return table1

    'End Function

    'Public Sub SendMail(ByVal From As String, _
    '  ByVal sendTo As String, ByVal Subject As String, _
    '  ByVal Body As String, _
    '  Optional ByVal AttachmentFile As String = "")

    '    Dim myMessage As MailMessage
    '    Dim SmtpServer As New SmtpClient()

    '    Try
    '        myMessage = New MailMessage()
    '        With myMessage
    '            .To.Add(New MailAddress(sendTo))
    '            .From = New MailAddress(From)
    '            .Subject = Subject
    '            .Body = Body

    '            If FileExists(AttachmentFile) Then
    '                Dim attachment As Attachment
    '                attachment = New System.Net.Mail.Attachment(AttachmentFile)
    '                .Attachments.Add(attachment)
    '            End If

    '        End With

    '        Dim smtp As SmtpClient
    '        smtp = New SmtpClient("127.0.0.1")
    '        smtp.Send(myMessage)

    '    Catch myexp As Exception
    '        Throw myexp
    '    End Try

    'End Sub

    'Private Function FileExists(ByVal FileFullPath As String) _
    ' As Boolean
    '    If Trim(FileFullPath) = "" Then Return False

    '    Dim f As New IO.FileInfo(FileFullPath)
    '    Return f.Exists

    'End Function
End Class