<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="newBook.aspx.vb" Inherits="admin_newBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:db_sxiao4_hw7 %>" DeleteCommand="DELETE FROM [sxiao4_hw7] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [sxiao4_hw7] ([ISBN], [book_name], [author], [edition], [year], [copies], [location], [pages], [description]) VALUES (@ISBN, @book_name, @author, @edition, @year, @copies, @location, @pages, @description)" SelectCommand="SELECT * FROM [sxiao4_hw7]" UpdateCommand="UPDATE [sxiao4_hw7] SET [book_name] = @book_name, [author] = @author, [edition] = @edition, [year] = @year, [copies] = @copies, [location] = @location, [pages] = @pages, [description] = @description WHERE [ISBN] = @ISBN">
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="cssdetailsview" DataKeyNames="ISBN" DataSourceID="SqlDataSource5" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
            <asp:BoundField DataField="book_name" HeaderText="Title" SortExpression="book_name" />
            <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" />
            <asp:BoundField DataField="edition" HeaderText="Edition" SortExpression="edition" />
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="copies" HeaderText="Copies" SortExpression="copies" />
            <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
            <asp:BoundField DataField="pages" HeaderText="Pages" SortExpression="pages" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

