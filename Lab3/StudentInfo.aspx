<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="Lab3.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function confirmDelete(studentId) {
            const result = confirm("Are you sure you want to delete this student?");
            if (result) {
                window.location.href = 'DeleteStudent.aspx?studentId=' + studentId;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodycontent" runat="server">
    <div>
        <h1>Student Info</h1>
    </div>
    <asp:Button ID="AddNewStudentButton" runat="server" Text="Add New Student" OnClick="AddNewStudentButton_Click"/>
    <br />
    <br />
    <asp:Table ID="Table1" runat="server" Border="1">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Student Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Student Id</asp:TableHeaderCell>
            <asp:TableHeaderCell>Course</asp:TableHeaderCell>
            <asp:TableHeaderCell></asp:TableHeaderCell>
            <asp:TableHeaderCell></asp:TableHeaderCell>
        </asp:TableHeaderRow>
    </asp:Table>


</asp:Content>
