<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lab3.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodycontent" runat="server">
    <div class="content-container">
        <asp:Label ID="Label1" runat="server" Text="<h1>Login</h1>" CssClass="login-title"></asp:Label>
        <asp:Image ID="UserImg" runat="server" src="./Images/account.png" CssClass="user-img"/>
        <asp:Label ID="Label2" runat="server" Text="Enter your ID and password" CssClass="login-description"></asp:Label>
        <div class="input-field">
            <asp:Label ID="Label3" runat="server" Text="ID:" CssClass="user-label" AssociatedControlID="IDTextBox"></asp:Label>
            <asp:TextBox ID="IDTextBox" runat="server" CssClass="user-input"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="rvfID" runat="server" ControlToValidate="IDTextBox" ErrorMessage="Please enter your ID!" ForeColor="Red" CssClass="id-checker"></asp:RequiredFieldValidator>
        <div class="input-field">
            <asp:Label ID="Label4" runat="server" Text="Password:" CssClass="user-label" AssociatedControlID="PasswordTextBox"></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="user-input" TextMode="Password"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Please enter your Password!" ForeColor="Red" CssClass="password-checker"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="IDTextBox" ControlToValidate="PasswordTextBox" ErrorMessage="Password cannot be the same as ID" Operator="NotEqual" Type="String" CssClass="compare-checker" ForeColor="Red"></asp:CompareValidator>
        <asp:Label ID="StatusLabel" runat="server" CssClass="status-label"></asp:Label>
        <div class="btn-row">
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="submit-btn btn" OnClick="SubmitButton_Click"/>
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="cancel-btn btn" OnClick="CancelButton_Click"/>
        </div>
    </div>
</asp:Content>
