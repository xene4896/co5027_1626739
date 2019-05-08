<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="co5027_1626739_assignment.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Products -- Men's Suits
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" Runat="Server">
    Product List
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" Runat="Server">
    
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="productID" DataSourceID="ProductsDataSource">
            <EditItemTemplate>
                productID:
                <asp:Label ID="productIDLabel1" runat="server" Text='<%# Eval("productID") %>' />
                <br />
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                productDesc:
                <asp:TextBox ID="productDescTextBox" runat="server" Text='<%# Bind("productDesc") %>' />
                <br />
                productPrice:
                <asp:TextBox ID="productPriceTextBox" runat="server" Text='<%# Bind("productPrice") %>' />
                <br />
                productStock:
                <asp:TextBox ID="productStockTextBox" runat="server" Text='<%# Bind("productStock") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                productID:
                <asp:TextBox ID="productIDTextBox" runat="server" Text='<%# Bind("productID") %>' />
                <br />
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                productDesc:
                <asp:TextBox ID="productDescTextBox" runat="server" Text='<%# Bind("productDesc") %>' />
                <br />
                productPrice:
                <asp:TextBox ID="productPriceTextBox" runat="server" Text='<%# Bind("productPrice") %>' />
                <br />
                productStock:
                <asp:TextBox ID="productStockTextBox" runat="server" Text='<%# Bind("productStock") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                productID:
                <asp:Label ID="productIDLabel" runat="server" Text='<%# Eval("productID") %>' />
                <br />
                productName:
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                productDesc:
                <asp:Label ID="productDescLabel" runat="server" Text='<%# Bind("productDesc") %>' />
                <br />
                productPrice:
                <asp:Label ID="productPriceLabel" runat="server" Text='<%# Bind("productPrice") %>' />
                <br />
                productStock:
                <asp:Label ID="productStockLabel" runat="server" Text='<%# Bind("productStock") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="ProductsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([productID] = @productID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="productID" QueryStringField="productID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        All other products:<br />
        <asp:Repeater ID="rptProduct" runat="server" DataSourceID="ProductListDataSource">
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
        <asp:SqlDataSource ID="ProductListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [productID], [productName] FROM [tblProduct]"></asp:SqlDataSource>
    </form>
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" Runat="Server">
</asp:Content>

