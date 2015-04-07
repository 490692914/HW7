<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Admin_booksEdited.aspx.vb" Inherits="bookdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqldetailSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_sxiao4_hw7 %>" DeleteCommand="DELETE FROM [sxiao4_hw7] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [sxiao4_hw7] ([ISBN], [book_name], [author], [edition], [year], [copies], [location], [pages], [description]) VALUES (@ISBN, @book_name, @author, @edition, @year, @copies, @location, @pages, @description)" SelectCommand="SELECT * FROM [sxiao4_hw7] WHERE ([ISBN] = @ISBN)" UpdateCommand="UPDATE [sxiao4_hw7] SET [book_name] = @book_name, [author] = @author, [edition] = @edition, [year] = @year, [copies] = @copies, [location] = @location, [pages] = @pages, [description] = @description WHERE [ISBN] = @ISBN">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="ISBN" QueryStringField="ISBN" Type="String" />
        </SelectParameters>
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="cssdetailsview" DataKeyNames="ISBN" DataSourceID="SqldetailSource" Height="50px" Width="367px">
        <Fields>
            <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ISBN") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validationError" ErrorMessage="Please enter ISBN"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Title" SortExpression="book_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("book_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("book_name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validationError" ErrorMessage="Please enter the title"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("book_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author" SortExpression="author">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("author") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("author") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="validationError" ErrorMessage="Please enter the Author"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("author") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edition" SortExpression="edition">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("edition") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("edition") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="validationError" ErrorMessage="Please enter the edition"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("edition") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="pages" HeaderText="Pages" SortExpression="pages" />
            <asp:BoundField DataField="copies" HeaderText="Copies" SortExpression="copies" />
            <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

