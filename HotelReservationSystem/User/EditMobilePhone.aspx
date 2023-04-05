<%@ Page
  Title="Change Mobile Phone Number | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Form.master"
  AutoEventWireup="true"
  CodeBehind="EditMobilePhone.aspx.cs"
  Inherits="HotelReservationSystem.User.EditMobilePhone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
  <div style="max-width: 512px;" class="card mx-auto my-4">
    <div class="card-body">
      <h2>
        <i class="bi bi-pen-fill me-2"></i>
        Change Mobile Phone
      </h2>

      <div class="my-3">
        <asp:Label
          class="form-label"
          runat="server"
          Text="New Mobile Phone Number" />

        <div class="row gx-0">
          <asp:TextBox
            class="col form-control rounded-0 rounded-start"
            runat="server"
            placeholder="+60123456789"
            TextMode="Phone" />

          <asp:Button class="col-auto btn btn-info rounded-0 rounded-end" runat="server" Text="Send" />
        </div>
      </div>

      <div class="my-3">
        <asp:Label class="form-label" runat="server" Text="OTP" />
        <asp:TextBox class="col form-control" runat="server" />
      </div>

      <asp:Button
        class="btn btn-primary w-100 mt-3 mb-4 shadow-sm"
        runat="server"
        Text="Update"
        PostBackUrl="~/User/EditProfile.aspx" />

      <asp:HyperLink runat="server" NavigateUrl="~/User/EditProfile.aspx">
        Back to edit user profile page
      </asp:HyperLink>
    </div>
  </div>
</asp:Content>
