<%@ Page
  Title="Forgot Password | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="ForgotPassword.aspx.cs"
  Inherits="HotelReservationSystem.User.ForgotPassword" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="px-3">
    <div style="max-width: 512px;" class="card mx-auto my-4">
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
            OnSelectedIndexChanged="ddlRecoverBy_SelectedIndexChanged">
            <asp:ListItem>Email Address</asp:ListItem>
            <asp:ListItem>Mobile Phone</asp:ListItem>
          </asp:DropDownList>
        </div>

        <div class="my-3">
          <asp:Label ID="lblRecoverMethod" CssClass="form-label" runat="server" Text="Email address" />

          <div class="row gx-0">
            <asp:TextBox
              ID="txtRecover"
              CssClass="col form-control rounded-0 rounded-start"
              runat="server"
              TextMode="Email" />

            <asp:Button CssClass="col-auto btn btn-info rounded-0 rounded-end" runat="server" Text="Send" />
          </div>
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="OTP" />
          <asp:TextBox CssClass="col form-control" runat="server" />
        </div>

        <asp:Button
          CssClass="btn btn-primary w-100 mt-3 mb-4"
          runat="server"
          Text="Recover"
          PostBackUrl="~/User/ResetPassword.aspx" />

        <asp:HyperLink runat="server" NavigateUrl="~/User/Login.aspx">Back to login</asp:HyperLink>
      </div>
    </div>
  </div>
</asp:Content>
