<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Lab3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodycontent" runat="server">
    <div>
        <h1>Update Student Info</h1>
    </div>

    <div id="Container" style="display: grid; grid-template-columns: 1fr 1fr; width: 350px; row-gap: 5px;">
        <asp:Label ID="Label1" runat="server" Text="Label">Student Name:</asp:Label>
        <asp:TextBox ID="StudentName" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Label">Student Id:</asp:Label>
        <asp:TextBox ID="StudentId" runat="server" ReadOnly="true" Enabled="false" style="background-color: gainsboro; border: none;"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Label">Course:</asp:Label>
        <asp:dropdownlist ID="DropDownList1" runat="server">
            <asp:listitem Text= "Electrical Engineering" Value= "Electrical Engineering"></asp:listitem>
            <asp:listitem Text= "Aeronautical Engineering" Value= "Aeronautical Engineering"></asp:listitem>
            <asp:listitem Text= "Computer Science" Value= "Computer Science"></asp:listitem>
        </asp:dropdownlist>
    </div>
    <br />
    <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButtonClick"/>
    <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click"/>
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
</asp:Content>
