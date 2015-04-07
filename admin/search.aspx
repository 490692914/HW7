<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_sxiao4_hw7 %>" SelectCommand="SELECT * FROM [sxiao4_hw7]"></asp:SqlDataSource>
    
    <% If Not IsPostBack Then%>
    <asp:Label ID="Label1" runat="server" Text="Search for a book by Title:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
    <% Else%>
   
     <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Search for a book by author:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
    <br /> <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="cssgridview" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
            <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
            <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
            <asp:BoundField DataField="copies" HeaderText="copies" SortExpression="copies" />
            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
            <asp:BoundField DataField="pages" HeaderText="pages" SortExpression="pages" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
        </Columns>
    </asp:GridView>
    <% End If %>
</asp:Content>

