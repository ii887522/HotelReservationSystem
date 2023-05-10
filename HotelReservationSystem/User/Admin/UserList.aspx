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
  <div class="row">
    <h2 class="col">
      <span class="bi bi-person-circle"></span>
      <span>User List</span>
    </h2>

    <div class="col-auto">
      <asp:LinkButton runat="server" CssClass="btn btn-success py-1 shadow-sm" PostBackUrl="~/User/Admin/AddUser.aspx">
        <span class="bi bi-plus h5"></span>
        <span class="align-text-bottom">Add</span>
      </asp:LinkButton>
    </div>
  </div>

  <asp:GridView
    ID="gvUsers"
    CssClass="table shadow-sm"
    runat="server"
    CellPadding="4"
    ForeColor="#333333"
    GridLines="None"
    AllowPaging="True"
    AllowSorting="True"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    DataSourceID="UserListSource"
    OnRowDeleting="gvUsers_RowDeleting"
  >
    <AlternatingRowStyle BackColor="White" />

    <Columns>
      <asp:BoundField
        DataField="Id"
        HeaderText="User ID"
        ReadOnly="True"
        SortExpression="Id"
        DataFormatString="{0:D6}"
      />

      <asp:BoundField DataField="UserName" HeaderText="Username" SortExpression="UserName" />
      <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

      <asp:BoundField
        DataField="MobilePhone"
        HeaderText="Mobile Phone"
        SortExpression="MobilePhone"
        ItemStyle-HorizontalAlign="Center"
      >
        <ItemStyle HorizontalAlign="Center" />
      </asp:BoundField>

      <asp:CheckBoxField
        DataField="IsActive"
        HeaderText="Active"
        SortExpression="IsActive"
        ItemStyle-HorizontalAlign="Center"
      >
        <ItemStyle HorizontalAlign="Center" />
      </asp:CheckBoxField>

      <asp:TemplateField HeaderText="Actions" ShowHeader="False">
        <ItemTemplate>
          <asp:ImageButton
            ID="ImageButton1"
            runat="server"
            CausesValidation="False"
            CommandName="Select"
            ImageUrl="~/icons/select.png"
            Text="Select"
          />

          <asp:ImageButton
            ID="ImageButton2"
            runat="server"
            CausesValidation="False"
            CommandName="Delete"
            ImageUrl="~/icons/delete.png"
            Text="Delete"
            OnClientClick="return confirm('Are you sure you want to delete this user?');"
          />
        </ItemTemplate>

        <ItemStyle HorizontalAlign="Center" />
      </asp:TemplateField>
    </Columns>

    <EditRowStyle BackColor="#7C6F57" />

    <EmptyDataTemplate>
      <span class="bi bi-exclamation-triangle-fill"></span>
      <span>What? No users can access to this system??? Please add in some users NOW!!!</span>
    </EmptyDataTemplate>

    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
  </asp:GridView>

  <asp:SqlDataSource
    ID="UserListSource"
    runat="server"
    ConnectionString="<%$ connectionStrings:LocalSqlServer %>"
    ProviderName="System.Data.SqlClient"
    SelectCommand="SELECT [User].Id, aspnet_Users.UserName, aspnet_Membership.Email, [User].MobilePhone, [User].IsActive FROM [User] INNER JOIN aspnet_Users ON [User].MembershipId = aspnet_Users.UserId INNER JOIN aspnet_Membership ON [User].MembershipId = aspnet_Membership.UserId"
  />

  <asp:DetailsView
    CssClass="table shadow-sm"
    runat="server"
    Width="512px"
    DataSourceID="UserSource"
    CellPadding="4"
    ForeColor="#333333"
    GridLines="None"
  >
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
    <EditRowStyle BackColor="#7C6F57" />
    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
  </asp:DetailsView>

  <asp:SqlDataSource
    ID="UserSource"
    runat="server"
    ConnectionString="<%$ connectionStrings:LocalSqlServer %>"
    ProviderName="System.Data.SqlClient"
    SelectCommand="WITH Roles AS (SELECT [User].Id AS UserId, aspnet_Roles.RoleName FROM [User] INNER JOIN aspnet_Users ON [User].RoleId = aspnet_Users.UserId INNER JOIN aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId) SELECT FORMAT(User_1.Id, '000000') AS [User ID], aspnet_Users_1.UserName AS [User Name], aspnet_Membership.Email, User_1.MobilePhone AS [Mobile Phone], User_1.IsActive AS Active, User_1.RtcCoin AS [RTC Coin], User_1.RtcCoinEarned AS [RTC Coin Earned], Roles_1.RoleName AS Role FROM [User] AS User_1 INNER JOIN aspnet_Users AS aspnet_Users_1 ON User_1.MembershipId = aspnet_Users_1.UserId INNER JOIN aspnet_Membership ON User_1.MembershipId = aspnet_Membership.UserId INNER JOIN Roles AS Roles_1 ON User_1.Id = Roles_1.UserId WHERE User_1.Id = @UserId"
  >
    <SelectParameters>
      <asp:ControlParameter ControlID="gvUsers" Name="UserId" PropertyName="SelectedValue" />
    </SelectParameters>
  </asp:SqlDataSource>
</asp:Content>
