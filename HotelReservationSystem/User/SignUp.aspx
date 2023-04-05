<%@ Page
  Title="Sign Up | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Form.master"
  AutoEventWireup="true"
  CodeBehind="SignUp.aspx.cs"
  Inherits="HotelReservationSystem.User.SignUp" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="main" runat="server">
  <div style="max-width: 512px;" class="card mx-auto my-4 shadow-sm">
    <div class="card-body">
      <h2>
        <i class="bi bi-pencil-square me-2"></i>
        Sign Up
        </h2>

      <div class="mt-4">
        <asp:Label CssClass="form-label" runat="server" Text="Username" />
        <asp:TextBox CssClass="form-control" runat="server" />
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Password" />

        <div class="row gx-0">
          <asp:TextBox
            CssClass="col form-control rounded-0 rounded-start"
            runat="server"
            TextMode="Password" />

          <button
            class="col-auto btn btn-danger rounded-0 rounded-end"
            type="button">
            <i class="bi bi-eye"></i>
          </button>
        </div>
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Retype password" />

        <div class="row gx-0">
          <asp:TextBox
            CssClass="col form-control rounded-0 rounded-start"
            runat="server"
            TextMode="Password" />

          <button
            class="col-auto btn btn-danger rounded-0 rounded-end"
            type="button">
            <i class="bi bi-eye"></i>
          </button>
        </div>
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Email address" />
        <asp:TextBox CssClass="form-control" runat="server" TextMode="Email" placeholder="abc@example.com" />
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Mobile phone" />
        <asp:TextBox CssClass="form-control" runat="server" TextMode="Phone" placeholder="+60123456789" />
      </div>

      <asp:Button
        runat="server"
        CssClass="btn btn-primary w-100 mt-3 mb-4 shadow-sm"
        Text="Sign Up"
        PostBackUrl="~/User/EditProfile.aspx" />

      <asp:HyperLink runat="server" NavigateUrl="~/User/Login.aspx">Back to login</asp:HyperLink>
    </div>
  </div>
</asp:Content>
