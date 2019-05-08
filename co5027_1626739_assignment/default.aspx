<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="co5027_1626739_assignment.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Homepage -- Men's Suits
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" Runat="Server">
    Currently In Store -- Men&#39;s Suits 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" Runat="Server">
    <form id="form1" runat="server">
        <br />
       <asp:Repeater ID="rptProduct" runat="server" DataSourceID="ProductDataSource">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <a href="<%# Eval("productID", "product.aspx?productID={0}") %>">
                            <%# Eval("productName") %>
                        </a>
                    </li>
                </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [productID], [productName] FROM [tblProduct]">
        </asp:SqlDataSource>
&nbsp;</form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" Runat="Server">
</asp:Content>

