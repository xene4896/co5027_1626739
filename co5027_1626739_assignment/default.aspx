﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="co5027_1626739_assignment.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Homepage -- Men's Suits
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" Runat="Server">
    Currently Trending
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" Runat="Server">
    <a href="product01.aspx">
        <asp:Image ID="product01" runat="server" ImageUrl="~/images/trending_product01.png" />
    </a>

    <a href="product02.aspx">
        <asp:Image ID="product02" runat="server" ImageUrl="~/images/trending_product02.png" />
    </a>

    <a href="product03.aspx">
        <asp:Image ID="product03" runat="server" ImageUrl="~/images/trending_product03.png" />
    </a>
    
    <a href="product04.aspx">
        <asp:Image ID="product04" runat="server" ImageUrl="~/images/trending_product04.png" />
    </a>
    
    <a href="product05.aspx">
        <asp:Image ID="product05" runat="server" ImageUrl="~/images/trending_product05.png" />
    </a>
    
    <a href="product06.aspx">
        <asp:Image ID="product06" runat="server" ImageUrl="~/images/trending_product06.png" />
    </a>
    <br />
    <br />
    <a runat="server" href="~/product.aspx">Browse More</a>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" Runat="Server">
</asp:Content>

