<%@ Page
  Title="Forgot Password | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Form.master"
  AutoEventWireup="true"
  CodeBehind="ForgotPassword.aspx.cs"
  Inherits="HotelReservationSystem.User.ForgotPassword" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="main" runat="server">
  <div style="max-width: 512px;" class="card mx-auto my-4 shadow-sm">
    <div class="card-body">
      <h2>
        <i class="bi bi-pencil-square me-2"></i>
        Forgot Password
      </h2>

      <div class="mt-4">
        <asp:Label CssClass="form-label" runat="server" Text="Recover by" />

        <asp:DropDownList
          CssClass="form-select"
          ID="ddlRecoverBy"
          runat="server"
          AutoPostBack="true"
        >
          <asp:ListItem>Email Address</asp:ListItem>
          <asp:ListItem>Mobile Phone</asp:ListItem>
        </asp:DropDownList>
      </div>

      <div class="my-3">
        <asp:Label ID="lblRecoverMethod" CssClass="form-label" runat="server" />

        <div class="row gx-0">
          <asp:TextBox
            ID="txtRecover"
            CssClass="col form-control rounded-0 rounded-start"
            runat="server" />

          <asp:Button CssClass="col-auto btn btn-info rounded-0 rounded-end" runat="server" Text="Send" />
        </div>
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="OTP" />
        <asp:TextBox CssClass="col form-control" runat="server" />
      </div>

      <asp:Button
        CssClass="btn btn-primary w-100 mt-3 mb-4 shadow-sm"
        runat="server"
        Text="Recover"
        PostBackUrl="~/User/ResetPassword.aspx" />

      <asp:HyperLink runat="server" NavigateUrl="~/User/Login.aspx">Back to login</asp:HyperLink>
    </div>
  </div>
</asp:Content>
