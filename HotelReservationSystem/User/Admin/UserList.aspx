<%@ Page
  Title="User List | RTC Hotel"
  Language="C#"
  MasterPageFile="~/AdminPage.Master"
  AutoEventWireup="true"
  CodeBehind="UserList.aspx.cs"
  Inherits="HotelReservationSystem.User.Admin.UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <asp:GridView
    runat="server"
    CellPadding="4"
    ForeColor="#333333"
    GridLines="None"
    AllowPaging="True"
    AllowSorting="True"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    DataSourceID="UserSource"
  >
    <AlternatingRowStyle BackColor="White" />

    <Columns>
      <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
      <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
      <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
      <asp:BoundField DataField="MobilePhone" HeaderText="MobilePhone" SortExpression="MobilePhone" />
      <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
      <asp:CommandField ShowSelectButton="True" />
    </Columns>

    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
  </asp:GridView>

  <asp:SqlDataSource
    ID="UserSource"
    runat="server"
    ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HotelReservationSystem.mdf;Integrated Security=True"
    ProviderName="System.Data.SqlClient"
    SelectCommand="SELECT [User].Id, aspnet_Users.UserName, aspnet_Membership.Email, [User].MobilePhone, [User].IsActive FROM [User] INNER JOIN aspnet_Users ON [User].MembershipId = aspnet_Users.UserId INNER JOIN aspnet_Membership ON [User].MembershipId = aspnet_Membership.UserId"
  />
</asp:Content>
