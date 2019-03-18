﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="co5027_1626739_assignment.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Register -- Men's Suits
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="register"
            CssClass="errorMessages" />
        <div>
            <asp:Label ID="lblUserName" runat="server" Text="UserName" AssociatedControlID="txtUserName"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                ErrorMessage="Please enter a user name" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </div>
            <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Please enter an email" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Please enter a password" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" AssociatedControlID="txtPassword"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox><asp:CompareValidator
                ErrorMessage="Please check your passwords match" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword" runat="server" ValidationGroup="register" ID="cvPasswords">*</asp:CompareValidator>
        </div>
        <div>
            <asp:Label ID="lblDOB" runat="server" Text="DOB" AssociatedControlID="txtDOB"></asp:Label>
            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB"
                ErrorMessage="Please enter a Date of Birth" ValidationGroup="register">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvDOB" runat="server" ErrorMessage="Please enter a valid DOB"
                ValidationGroup="register" ControlToValidate="txtDOB" MaximumValue="01/01/2013"
                MinimumValue="01/01/1900" Type="Date">*</asp:RangeValidator>
        </div>
        <div>
            <asp:Button ID="btnRegister" runat="server" Text="Register" ValidationGroup="register" OnClick="btnRegister_Click" />
            <br />
            <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>
                Login</h2>
            <asp:ValidationSummary runat="server" ValidationGroup="login" CssClass="errorMessages" />
            <div>
                <asp:Label ID="lblLogInUserName" runat="server" Text="UserName" AssociatedControlID="txtLogInUser"></asp:Label>
                <asp:TextBox ID="txtLogInUser" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ErrorMessage="Please enter a username" ControlToValidate="txtLogInUser" runat="server" ValidationGroup="login" >*</asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblLogInPassword" runat="server" Text="Password" AssociatedControlID="txtLogInPassword"></asp:Label>
                <asp:TextBox ID="txtLogInPassword" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator
                    ErrorMessage="Please enter a password" ControlToValidate="txtLogInPassword" ValidationGroup="login" runat="server" >*</asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="login" />
            </div>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
