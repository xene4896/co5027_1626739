<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="co5027_1626739_assignment.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Homepage -- Men's Suits
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" Runat="Server">
    Currently Trending
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" Runat="Server">
    <form id="form1" runat="server">
    <a href="product.aspx">
        <asp:Image ID="product01" runat="server" ImageUrl="~/ProductImages/trending_product01.png" />
    </a>

    <a href="product.aspx">
        <asp:Image ID="product02" runat="server" ImageUrl="~/ProductImages/trending_product02.png" />
    </a>

    <a href="product.aspx">
        <asp:Image ID="product03" runat="server" ImageUrl="~/ProductImages/trending_product03.png" />
    </a>
    
    <a href="product.aspx">
        <asp:Image ID="product04" runat="server" ImageUrl="~/ProductImages/trending_product04.png" />
    </a>
    
    <a href="product.aspx">
        <asp:Image ID="product05" runat="server" ImageUrl="~/ProductImages/trending_product05.png" />
    </a>
    
    <a href="product.aspx">
        <asp:Image ID="product06" runat="server" ImageUrl="~/ProductImages/trending_product06.png" />
    </a>
    <br />
    <br />
    <a runat="server" href="~/product.aspx">Browse More</a><br />

       <asp:Repeater ID="rptProduct" runat="server" DataSourceID="ProductDataSource">
            <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <<li>
                        <a href="<%# Eval("ProductID", "product.aspx?productID={0}") %>
                            <%# Eval("productName") %>"></a>
                     </li>
                </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="ProductDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [productID] = @original_productID AND [productName] = @original_productName AND (([productDesc] = @original_productDesc) OR ([productDesc] IS NULL AND @original_productDesc IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([productID], [productName], [productDesc]) VALUES (@productID, @productName, @productDesc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [productName] = @productName, [productDesc] = @productDesc WHERE [productID] = @original_productID AND [productName] = @original_productName AND (([productDesc] = @original_productDesc) OR ([productDesc] IS NULL AND @original_productDesc IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_productID" Type="Int32" />
                <asp:Parameter Name="original_productName" Type="String" />
                <asp:Parameter Name="original_productDesc" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="productID" Type="Int32" />
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="productDesc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="productDesc" Type="String" />
                <asp:Parameter Name="original_productID" Type="Int32" />
                <asp:Parameter Name="original_productName" Type="String" />
                <asp:Parameter Name="original_productDesc" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
&nbsp;</form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" Runat="Server">
</asp:Content>

