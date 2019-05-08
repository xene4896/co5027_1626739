<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="co5027_1626739_assignment.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
    Image Uploader -- Men&#39;s Suits 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <asp:Image ID="current_image" runat="server" />
    <br /><br />
    <form id="uploader" runat="server">
        <asp:FileUpload ID="image_uploader" runat="server" />
    <br /><br />
        <asp:Button ID="upload_image" runat="server" Text="Upload" OnClick="upload_image_Click" />
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
