<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="Lab3.MasterPages.WebForm1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodycontent" runat="server">

    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceSumm" OnLoad="Chart1_Load1" Width="641px">
        <Series>
            <asp:Series ChartType="Pie" Name="Series1" YValueMembers="StudentCount" XValueMember="programme" ChartArea="ChartArea1" Label="#VALY" LegendText="#VALX">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1">
            </asp:Legend>
        </Legends>
    </asp:Chart>

    <asp:SqlDataSource ID="SqlDataSourceSumm" runat="server" ConnectionString="<%$ ConnectionStrings:TestDatabaseConnectionString %>" SelectCommand="SELECT [programme], COUNT(*) AS StudentCount FROM [student] GROUP BY [programme]"></asp:SqlDataSource>
</asp:Content>
