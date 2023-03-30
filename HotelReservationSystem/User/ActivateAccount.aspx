<%@ Page
  Title="Activate Account | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="ActivateAccount.aspx.cs"
  Inherits="HotelReservationSystem.User.ActivateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="px-3">
    <div style="max-width: 512px;" class="card mx-auto my-4">
      <div class="card-body">
        <h2>
          <i class="bi bi-record-btn-fill me-2"></i>
          Activate Account
        </h2>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Your email address" />

          <div class="row gx-0">
            <asp:TextBox
              runat="server"
              TextMode="Email"
              Enabled="false"
              CssClass="col form-control rounded-0 rounded-start"
              Text="example@gmail.com" />

            <asp:Button
              CssClass="col-auto btn btn-info rounded-0 rounded-end"
              runat="server"
              Text="Send" />
          </div>
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Email OTP" />
          <asp:TextBox CssClass="col form-control" runat="server" />
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Your mobile phone" />

          <div class="row gx-0">
            <asp:TextBox
              runat="server"
              TextMode="Phone"
              Enabled="false"
              CssClass="col form-control rounded-0 rounded-start"
              Text="+60104221157" />

            <asp:Button
              CssClass="col-auto btn btn-info rounded-0 rounded-end"
              runat="server"
              Text="Send" />
          </div>
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Phone OTP" />
          <asp:TextBox CssClass="col form-control" runat="server" />
        </div>

        <asp:Button
          CssClass="btn btn-primary w-100 mt-3 mb-4"
          runat="server"
          Text="Activate"
          PostBackUrl="~/User/EditProfile.aspx" />

        <asp:HyperLink runat="server" NavigateUrl="~/User/EditProfile.aspx">
          Back to edit user profile page
        </asp:HyperLink>
      </div>
    </div>
  </div>
</asp:Content>
