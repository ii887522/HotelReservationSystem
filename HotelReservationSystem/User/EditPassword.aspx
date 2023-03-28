<%@ Page
  Title="Change Password | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="EditPassword.aspx.cs"
  Inherits="HotelReservationSystem.User.EditPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="px-3">
    <div style="max-width: 512px;" class="card mx-auto my-4">
      <div class="card-body">
        <h2>
          <i class="bi bi-pen-fill"></i>
          Change Password
        </h2>

        <div class="my-3">
          <asp:Label class="form-label" runat="server" Text="Current Password" />

          <div class="row gx-0">
            <asp:TextBox
              class="col form-control rounded-0 rounded-start"
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
          <asp:Label class="form-label" runat="server" Text="New Password" />

          <div class="row gx-0">
            <asp:TextBox
              class="col form-control rounded-0 rounded-start"
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
          <asp:Label class="form-label" runat="server" Text="Retype New Password" />

          <div class="row gx-0">
            <asp:TextBox
              class="col form-control rounded-0 rounded-start"
              runat="server"
              TextMode="Password" />

            <button
              class="col-auto btn btn-danger rounded-0 rounded-end"
              type="button">
              <i class="bi bi-eye"></i>
            </button>
          </div>
        </div>

        <asp:Button runat="server" class="btn btn-primary w-100 mt-3 mb-4" Text="Update" />

        <asp:HyperLink runat="server" NavigateUrl="~/User/EditProfile.aspx">
          Back to edit your profile
        </asp:HyperLink>
      </div>
    </div>
  </div>
</asp:Content>
