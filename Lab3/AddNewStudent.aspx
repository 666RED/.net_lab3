<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewStudent.aspx.cs" Inherits="Lab3.AddNewStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodycontent" runat="server">
    <div>
        <h1>Add New Student</h1>
    </div>

    <div id="Container" style="display: grid; grid-template-columns: 1fr 1fr; width: 350px; row-gap: 5px;">
        <asp:Label ID="Label1" runat="server" Text="Label">Student Name:</asp:Label>
        <asp:TextBox ID="StudentName" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Label">Student Id:</asp:Label>
        <asp:TextBox ID="StudentId" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Label">Course:</asp:Label>
        <asp:dropdownlist ID="DropDownList1" runat="server">
            <asp:listitem Text= "Select Course" Value= "-1"></asp:listitem>
            <asp:listitem Text= "Electrical Engineering" Value= "Electrical Engineering"></asp:listitem>
            <asp:listitem Text= "Aeronautical Engineering" Value= "Aeronautical Engineering"></asp:listitem>
            <asp:listitem Text= "Computer Science" Value= "Computer Science"></asp:listitem>
        </asp:dropdownlist>
    </div>
    <br />
    <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButton_Click"/>
    <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click"/>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="" style="color: red;"></asp:Label>
</asp:Content>
