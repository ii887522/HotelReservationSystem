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
    SelectCommand="SELECT FORMAT([User].Id, '000000') [User ID], aspnet_Users.UserName [Username], aspnet_Membership.Email, [User].MobilePhone [Mobile Phone], [User].IsActive [Active], [User].RtcCoinEarned [RTC Coin Earned], [User].RtcCoin [RTC Coin] FROM [User] INNER JOIN aspnet_Users ON [User].MembershipId = aspnet_Users.UserId INNER JOIN aspnet_Membership ON [User].MembershipId = aspnet_Membership.UserId WHERE [User].Id = @UserId"
  >
    <SelectParameters>
      <asp:ControlParameter ControlID="gvUsers" Name="UserId" PropertyName="SelectedValue" />
    </SelectParameters>
  </asp:SqlDataSource>
</asp:Content>
