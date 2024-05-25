<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TouristsListWithSpecialRequests.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="TOURISTID" HeaderText="TOURISTID" SortExpression="TOURISTID" />
        <asp:BoundField DataField="SPECIALREQUESTS" HeaderText="SPECIALREQUESTS" SortExpression="SPECIALREQUESTS" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TOURISMDBConnectionString %>" SelectCommand="SELECT TOURISTID, [SPECIALREQUESTS] FROM [dbo].[BOOKING]
WHERE TOURISTID IN (SELECT [TOURISTID] FROM [dbo].[BOOKING] WHERE [SPECIALREQUESTS]IS NOT NULL)
;"></asp:SqlDataSource>
</asp:Content>

