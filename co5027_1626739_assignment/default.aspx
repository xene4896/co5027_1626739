<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="co5027_1626739_assignment.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Homepage -- (online shop)
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" Runat="Server">
    Currently Trending
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" Runat="Server">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" ImageUrl="~/images/product_trending.png" runat="server" />
    <br />
        <a runat="server" href="~/product.aspx">Browse More</a></form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" Runat="Server">
</asp:Content>

