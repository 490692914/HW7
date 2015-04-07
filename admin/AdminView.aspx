<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="AdminView.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_sxiao4_hw7 %>" SelectCommand="SELECT [ISBN], [book_name], [author] FROM [sxiao4_hw7]" DeleteCommand="DELETE FROM [sxiao4_hw7] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [sxiao4_hw7] ([ISBN], [book_name], [author]) VALUES (@ISBN, @book_name, @author)" UpdateCommand="UPDATE [sxiao4_hw7] SET [book_name] = @book_name, [author] = @author WHERE [ISBN] = @ISBN">
        <DeleteParameters>
            <asp:Parameter Name="ISBN" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="author" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" CssClass="cssgridview">
    <Columns>
        <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
        <asp:BoundField DataField="book_name" HeaderText="Book Title" SortExpression="book_name" />
        <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" />
        <asp:HyperLinkField HeaderText="Details" NavigateUrl="~/admin/Admin_booksEdited.aspx" Text="Select" DataNavigateUrlFields="ISBN" DataNavigateUrlFormatString="~/admin/Admin_booksEdited.aspx?ISBN={0}" />
    </Columns>
</asp:GridView>
</asp:Content>

