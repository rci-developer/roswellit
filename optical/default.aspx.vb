
Partial Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Session("userName") = "Guest"
    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit.Click
        Dim username As String = txtUsername.Text
        Dim password As String = txtPassword.Text
        If username = "admin" And password = "admin" Then
            Session("userName") = "admin"
            Response.Redirect("admin/index.aspx")
        ElseIf username = "user" And password = "user" Then
            Session("userName") = "user"
            Response.Redirect("order.aspx")
        Else
            lblError.Text = "Username/password incorrect"
        End If
    End Sub
End Class