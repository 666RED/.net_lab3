<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Lab3.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodycontent" runat="server">
    <div class="sub-container" runat="server">
        <asp:Label ID="PageTitle" runat="server" Text="<h1>Contact Us</h1>" CssClass="page-title"></asp:Label>
        <asp:Label ID="Description" runat="server" Text="Talk to us" CssClass="page-description"></asp:Label>
        <div class="field-container" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Student ID:" CssClass="field-label"></asp:Label>
            <asp:TextBox ID="IDTextbox" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="rvfID" runat="server" ControlToValidate="IDTextbox" ErrorMessage="Please enter your ID!" ForeColor="Red"></asp:RequiredFieldValidator>
         <div class="field-container" runat="server">
            <asp:Label ID="Label2" runat="server" Text="Name:" CssClass="field-label"></asp:Label>
            <asp:TextBox ID="NameTextbox" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextbox" ErrorMessage="Please enter your name!" ForeColor="Red"></asp:RequiredFieldValidator>
         <div class="field-container" runat="server">
            <asp:Label ID="Label3" runat="server" Text="Comment:" CssClass="field-label"></asp:Label>
            <textarea runat="server" class="comment-textarea textbox" id="CommentTextbox"></textarea>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CommentTextbox" ErrorMessage="Please enter your comment!" ForeColor="Red"></asp:RequiredFieldValidator>
        <div runat="server" class="button-row">
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="contact-btn" OnClick="SubmitButton_Click"/>
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="contact-btn" OnClick="CancelButton_Click"/>
        </div>
        <asp:Label ID="StatusLabel" runat="server" CssClass="info"></asp:Label>

    </div>
</asp:Content>
