<%@ Page
  Title="Reset Password | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="ResetPassword.aspx.cs"
  Inherits="HotelReservationSystem.ResetPassword" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="max-width: 512px;" class="card m-auto">
    <div class="card-body">
      <h2>
        <i class="bi bi-arrow-counterclockwise"></i>
        Reset Password
      </h2>

      <div class="my-3">
        <asp:Label class="form-label" runat="server" Text="Password" />

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
        <asp:Label class="form-label" runat="server" Text="Retype password" />

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

      <asp:Button runat="server" class="btn btn-warning w-100 mt-3 mb-4" Text="Reset" />
    </div>
  </div>
</asp:Content>
