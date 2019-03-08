<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="product01.aspx.cs" Inherits="co5027_1626739_assignment.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Deep Blue Style -- Men's Suits
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
    Deep Blue Style
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
    <asp:Image ID="product01" runat="server" ImageUrl="~/images/trending_product01.png" />
    <br /><br />
    Product Name: Deep Blue Style
    <br />
    Price: $499.00
    <br />
    This deep blue suit made with the finest cotton, comes with all sizes and very affordable. 
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Buy Now" />
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
