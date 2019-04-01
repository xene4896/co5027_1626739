<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="co5027_1626739_assignment.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Products -- Men's Suits
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" Runat="Server">
    Product List
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="productID" DataSourceID="ProductDataStore" style="margin-right: 0px" Width="446px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="productID" HeaderText="productID" ReadOnly="True" SortExpression="productID" />
            <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
            <asp:BoundField DataField="productDesc" HeaderText="productDesc" SortExpression="productDesc" />
            <asp:HyperLinkField DataNavigateUrlFields="productID" DataNavigateUrlFormatString="UploadImage.aspx?id={0}" InsertVisible="False" Text="Set Image" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProductDataStore" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [productID] = @original_productID AND [productName] = @original_productName AND (([productDesc] = @original_productDesc) OR ([productDesc] IS NULL AND @original_productDesc IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([productID], [productName], [productDesc]) VALUES (@productID, @productName, @productDesc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [productName] = @productName, [productDesc] = @productDesc WHERE [productID] = @original_productID AND [productName] = @original_productName AND (([productDesc] = @original_productDesc) OR ([productDesc] IS NULL AND @original_productDesc IS NULL))">
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
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="productID" DataSourceID="FormDataSource" DefaultMode="Insert">
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
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="FormDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [productID] = @original_productID AND [productName] = @original_productName AND (([productDesc] = @original_productDesc) OR ([productDesc] IS NULL AND @original_productDesc IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([productID], [productName], [productDesc]) VALUES (@productID, @productName, @productDesc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [productName] = @productName, [productDesc] = @productDesc WHERE [productID] = @original_productID AND [productName] = @original_productName AND (([productDesc] = @original_productDesc) OR ([productDesc] IS NULL AND @original_productDesc IS NULL))">
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
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" Runat="Server">
</asp:Content>

