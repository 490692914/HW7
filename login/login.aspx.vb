
Partial Class login_login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn
        If Roles.IsUserInRole(Login1.UserName, "r_shan_admin") = True Then
            Response.Redirect("~/admin/AdminView.aspx")
        Else : Response.Redirect("~/default.axpx")
        End If
    End Sub
End Class
