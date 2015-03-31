<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_sxiao4_hw7 %>" SelectCommand="SELECT [ISBN], [book_name], [author] FROM [sxiao4_hw7]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
        <asp:BoundField DataField="book_name" HeaderText="Book Title" SortExpression="book_name" />
        <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" />
        <asp:CommandField ShowSelectButton="True" />
    </Columns>
</asp:GridView>
</asp:Content>

