<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="co5027_1626739_assignment.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin Panel -- Men&#39;s Suits
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
    Admin Panel
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    Edit Products:
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="productID" DataSourceID="ProductDataStore" style="margin-right: 0px" Width="776px" Height="158px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="productID" HeaderText="ID" ReadOnly="True" SortExpression="productID" />
            <asp:BoundField DataField="productName" HeaderText="Name" SortExpression="productName" />
            <asp:BoundField DataField="productDesc" HeaderText="Desc" SortExpression="productDesc" />
            <asp:BoundField DataField="productPrice" HeaderText="Price" SortExpression="productPrice" />
            <asp:BoundField DataField="productStock" HeaderText="Stock" SortExpression="productStock" />
            <asp:HyperLinkField HeaderText="Image" DataNavigateUrlFields="productID" DataNavigateUrlFormatString="UploadImage.aspx?id={0}" InsertVisible="False" Text="Set Image" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProductDataStore" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [productID] = @original_productID AND [productName] = @original_productName AND (([productDesc] = @original_productDesc) OR ([productDesc] IS NULL AND @original_productDesc IS NULL)) AND (([productPrice] = @original_productPrice) OR ([productPrice] IS NULL AND @original_productPrice IS NULL)) AND (([productStock] = @original_productStock) OR ([productStock] IS NULL AND @original_productStock IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([productID], [productName], [productDesc], [productPrice], [productStock]) VALUES (@productID, @productName, @productDesc, @productPrice, @productStock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [productName] = @productName, [productDesc] = @productDesc, [productPrice] = @productPrice, [productStock] = @productStock WHERE [productID] = @original_productID AND [productName] = @original_productName AND (([productDesc] = @original_productDesc) OR ([productDesc] IS NULL AND @original_productDesc IS NULL)) AND (([productPrice] = @original_productPrice) OR ([productPrice] IS NULL AND @original_productPrice IS NULL)) AND (([productStock] = @original_productStock) OR ([productStock] IS NULL AND @original_productStock IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_productID" Type="Int32" />
                <asp:Parameter Name="original_productName" Type="String" />
                <asp:Parameter Name="original_productDesc" Type="String" />
                <asp:Parameter Name="original_productPrice" Type="String" />
                <asp:Parameter Name="original_productStock" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="productID" Type="Int32" />
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="productDesc" Type="String" />
                <asp:Parameter Name="productPrice" Type="String" />
                <asp:Parameter Name="productStock" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="productDesc" Type="String" />
                <asp:Parameter Name="productPrice" Type="String" />
                <asp:Parameter Name="productStock" Type="Int32" />
                <asp:Parameter Name="original_productID" Type="Int32" />
                <asp:Parameter Name="original_productName" Type="String" />
                <asp:Parameter Name="original_productDesc" Type="String" />
                <asp:Parameter Name="original_productPrice" Type="String" />
                <asp:Parameter Name="original_productStock" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        Add New Products:<br />
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
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="FormDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([productID] = @productID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="productID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
