<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="co5027_1626739_assignment.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Homepage -- (online shop)
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" Runat="Server">
    <asp:Image ID="storeLogo" ImageUrl="~/images/placeholder.png" runat="Server" Width="500px" Height="100px" ></asp:Image>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" Runat="Server">
    Currently Trending
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" Runat="Server">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" ImageUrl="~/images/product_trending.png" runat="server" />
    <br />
    <!--    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductID:
                <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductQuantity:
                <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626739_co5027_asgConnectionString2 %>" SelectCommand="SELECT * FROM [tbl_Products]"></asp:SqlDataSource>
        <br /> -->
        <a runat="server" href="~/product.aspx">Browse More</a></form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" Runat="Server">
</asp:Content>

