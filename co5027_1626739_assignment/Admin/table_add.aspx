<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="table_add.aspx.cs" Inherits="co5027_1626739_assignment.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="lblProductName" runat="server" Text="Name"></asp:Label>
        <br />
        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblProductDesc" runat="server" Text="Description"></asp:Label>
        <br />
        <asp:TextBox ID="txtProductDesc" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" OnClick="Button1_Click" Text="Add Entry" />
    &nbsp;<asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
