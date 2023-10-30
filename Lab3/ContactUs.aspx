<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Lab3.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodycontent" runat="server">
    <div class="container">
        <div class="sub-container">
            <asp:Image ID="Image1" runat="server" ImageUrl="./Images/call.png" CssClass="call-img"/>
            <asp:Label ID="Label1" runat="server" Text="Talk to Sales" CssClass="title"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Interested in our software? Just pick up the phone to chat with a member of our sales team." CssClass="description"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="phone-number" NavigateUrl="https://www.youtube.com/watch?v=dQw4w9WgXcQ" Target="_blank">+012 345 6789</asp:HyperLink>
        </div>
        <asp:HyperLink runat="server" NavigateUrl="https://www.youtube.com/watch?v=_MlgZ7kI2hg" CssClass="sub-container link" Target="_blank">
            <asp:Image ID="Image2" runat="server" ImageUrl="./Images/chat.png" CssClass="call-img"/>
            <asp:Label ID="Label3" runat="server" Text="Contact Customer Support" CssClass="title"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Sometimes you need a little help from your friends. Or a support rep. Don't worry... we're here for you." CssClass="description"></asp:Label>
        </asp:HyperLink>
    </div>
</asp:Content>
