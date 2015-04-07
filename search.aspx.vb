
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim searchWord As String
        searchWord = "select * from sxiao4_hw7 where (book_name Like '%" + TextBox1.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub


    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged
        Dim searchWord As String
        searchWord = "select * from sxiao4_hw7 where (author Like '%" + TextBox2.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
