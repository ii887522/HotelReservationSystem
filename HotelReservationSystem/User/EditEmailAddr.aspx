<%@ Page
  Title="Change Email Address | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="EditEmailAddr.aspx.cs"
  Inherits="HotelReservationSystem.User.EditEmailAddr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="px-3">
    <div style="max-width: 512px;" class="card mx-auto my-4">
      <div class="card-body">
        <h2>
          <i class="bi bi-pen-fill"></i>
          Change Email Address
        </h2>

        <div class="my-3">
          <asp:Label ID="lblRecoverMethod" class="form-label" runat="server" Text="New Email Address" />

          <div class="row gx-0">
            <asp:TextBox
              ID="txtRecover"
              class="col form-control rounded-0 rounded-start"
              runat="server"
              TextMode="Email" />

            <asp:Button class="col-auto btn btn-info rounded-0 rounded-end" runat="server" Text="Send" />
          </div>
        </div>

        <div class="my-3">
          <asp:Label class="form-label" runat="server" Text="OTP" />
          <asp:TextBox class="col form-control" runat="server" />
        </div>

        <asp:Button
          class="btn btn-primary w-100 mt-3 mb-4"
          runat="server"
          Text="Update"
          PostBackUrl="~/User/ResetPassword.aspx" />

        <asp:HyperLink runat="server" NavigateUrl="~/User/EditProfile.aspx">
          Back to edit your profile
        </asp:HyperLink>
      </div>
    </div>
  </div>
</asp:Content>
