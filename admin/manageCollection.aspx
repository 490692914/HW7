﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="manageCollection.aspx.vb" Inherits="admin_manageCollection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_sxiao4_hw7 %>" DeleteCommand="DELETE FROM [sxiao4_hw7] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [sxiao4_hw7] ([ISBN], [book_name], [author], [edition], [year], [copies], [location], [pages], [description]) VALUES (@ISBN, @book_name, @author, @edition, @year, @copies, @location, @pages, @description)" SelectCommand="SELECT * FROM [sxiao4_hw7]" UpdateCommand="UPDATE [sxiao4_hw7] SET [book_name] = @book_name, [author] = @author, [edition] = @edition, [year] = @year, [copies] = @copies, [location] = @location, [pages] = @pages, [description] = @description WHERE [ISBN] = @ISBN">
    <DeleteParameters>
        <asp:Parameter Name="ISBN" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ISBN" Type="String" />
        <asp:Parameter Name="book_name" Type="String" />
        <asp:Parameter Name="author" Type="String" />
        <asp:Parameter Name="edition" Type="String" />
        <asp:Parameter Name="year" Type="Int32" />
        <asp:Parameter Name="copies" Type="Int32" />
        <asp:Parameter Name="location" Type="String" />
        <asp:Parameter Name="pages" Type="Int32" />
        <asp:Parameter Name="description" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="book_name" Type="String" />
        <asp:Parameter Name="author" Type="String" />
        <asp:Parameter Name="edition" Type="String" />
        <asp:Parameter Name="year" Type="Int32" />
        <asp:Parameter Name="copies" Type="Int32" />
        <asp:Parameter Name="location" Type="String" />
        <asp:Parameter Name="pages" Type="Int32" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="ISBN" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="cssgridview" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
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
        <asp:CommandField HeaderText="Manage" ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
</asp:GridView>
</asp:Content>

