<%@ Page
  Title="Reset Password | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Form.master"
  AutoEventWireup="true"
  CodeBehind="ResetPassword.aspx.cs"
  Inherits="HotelReservationSystem.User.ResetPassword" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="main" runat="server">
  <div style="max-width: 512px;" class="card mx-auto my-4 shadow-sm">
    <div class="card-body">
      <h2>
        <i class="bi bi-arrow-counterclockwise me-2"></i>
        Reset Password
      </h2>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Password" />

        <div class="row gx-0">
          <asp:TextBox
            ID="txtPassword"
            CssClass="col form-control rounded-0 rounded-start"
            runat="server"
            TextMode="Password"
            ClientIDMode="Static"
          />

          <button
            class="col-auto btn btn-danger rounded-0 rounded-end"
            type="button"
            onclick='togglePasswordVisibility("txtPassword")'
          >
            <i class="bi bi-eye"></i>
          </button>
        </div>
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Retype password" />

        <div class="row gx-0">
          <asp:TextBox
            ID="txtRetypePassword"
            CssClass="col form-control rounded-0 rounded-start"
            runat="server"
            TextMode="Password"
            ClientIDMode="Static"
          />

          <button
            class="col-auto btn btn-danger rounded-0 rounded-end"
            type="button"
            onclick='togglePasswordVisibility("txtRetypePassword")'
          >
            <i class="bi bi-eye"></i>
          </button>
        </div>
      </div>

      <asp:Button runat="server" CssClass="btn btn-warning w-100 mt-3 mb-4 shadow-sm" Text="Reset" />
    </div>
  </div>

  <script type="text/javascript">
    function togglePasswordVisibility(txtId) {
      const txtPassword = document.getElementById(txtId)

      if (txtPassword.getAttribute("type") == "password") {
        txtPassword.setAttribute("type", "text")
      } else {
        txtPassword.setAttribute("type", "password")
      }
    }
  </script>
</asp:Content>
