<%@ Page Title="" Language="C#" MasterPageFile="~/site_master.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="co5027_1626739_assignment.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Contact Us -- Men's Suits
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" Runat="Server">
    Contact Us
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" Runat="Server">
    <asp:panel runat="server" ID="pnlCompose">
        <form runat="server">
            <asp:ValidationSummary runat="server" CssClass="errorMessages">
            </asp:ValidationSummary>
        <div>
            <asp:label id="lblEmail" runat="server" text="Email Address" associatedcontrolid="txtEmail">
            </asp:label>
            <asp:textbox id="txtEmail" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ErrorMessage="Please check you entered your email address correctly" 
                ControlToValidate="txtEmail" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:label id="lblConfirmEmail" runat="server" text="Confirm Email" associatedcontrolid="txtConfirmEmail">
            </asp:label>
            <asp:textbox id="txtConfirmEmail" runat="server">
            </asp:textbox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Please check your confirmed email address" 
                ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" CssClass="error">*</asp:CompareValidator>
        </div>
        <div>
            <asp:label id="lblSubject" runat="server" text="Subject" associatedcontrolid="txtSubject">
            </asp:label>
            <asp:textbox id="txtSubject" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ErrorMessage="Please type a subject for the message" 
                ControlToValidate="txtSubject" CssClass="error">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:label id="lblBody" runat="server" text="Your Message" associatedcontrolid="txtBody">
            </asp:label>
            <asp:textbox id="txtBody" runat="server" textmode="MultiLine">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                ErrorMessage="Please type your message" ControlToValidate="txtBody" CssClass="error">*</asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:button id="btnContact" runat="server" text="Send" OnClick="btnContact_Click" />
        </div>
            </form>
    </asp:panel>
    

    <asp:Panel ID="pnlSent" runat="server" visible="false">
    <p>Your message has been sent</p>
    </asp:Panel>
    </asp:content>

    <asp:Content ID="content5" ContentPlaceHolderID="GoogleMap" runat="server">
        <div id="map"></div>
        <script>
          var map;
          function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
              center: {lat: 4.60637, lng: 114.3247604},
              zoom: 17
              });
          }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCPPQDKWJqFCDVqMZ2ik3AvTp3bx7jtxGQ&callback=initMap"
        async defer></script>
</asp:Content>

