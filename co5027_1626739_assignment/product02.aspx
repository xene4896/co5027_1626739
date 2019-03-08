<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="product02.aspx.cs" Inherits="co5027_1626739_assignment.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Dark Blue Checkers -- Men's Suits
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
    Dark Blue Checkers
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
    <asp:Image ID="product02" runat="server" ImageUrl="~/images/trending_product02.png" />
    <br /><br />
    Product Name: Dark Blue Checkers
    <br />
    Price: $699.00
    <br />
    Dark blue suit that is laced with checkers patterns.
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Buy Now" />
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
