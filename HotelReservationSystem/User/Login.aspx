<%@ Page
  Title="Login | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Form.master"
  AutoEventWireup="true"
  CodeBehind="Login.aspx.cs"
  Inherits="HotelReservationSystem.User.Login" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="main" runat="server">
  <div style="max-width: 512px;" class="card mx-auto my-4 shadow-sm">
    <div class="card-body">
      <h2>
        <i class="bi bi-door-open-fill me-2"></i>
        Login
      </h2>

      <div class="mt-4 mb-3">
        <asp:Label CssClass="form-label" runat="server" Text="Username" />
        <span class="text-danger fw-bold">*</span>
        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" />

        <asp:RequiredFieldValidator
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Username is required"
          ControlToValidate="txtUsername" />
      </div>

      <asp:Label CssClass="form-label" runat="server" Text="Password" />
      <span class="text-danger fw-bold">*</span>

      <div class="row gx-0">
        <asp:TextBox
          ID="txtPassword"
          CssClass="col form-control rounded-0 rounded-start"
          runat="server"
          TextMode="Password" />

        <button
          class="col-auto btn btn-danger rounded-0 rounded-end"
          type="button"
          onclick="togglePasswordVisibility()">

          <i class="bi bi-eye"></i>
        </button>
      </div>

      <asp:RequiredFieldValidator
        CssClass="text-danger"
        runat="server"
        ErrorMessage="Password is required"
        ControlToValidate="txtPassword" />

      <asp:CheckBox
        ID="chkRemember"
        CssClass="d-block my-3"
        runat="server"
        Text="&nbsp;&nbsp;&nbsp;Remember Me" />

      <div class="mt-3 mb-4">
        <asp:Button
          ID="btnLogin"
          runat="server"
          CssClass="btn btn-primary w-100 shadow-sm"
          Text="Login"
          OnClick="btnLogin_Click" />

        <asp:Label
          ID="lblError"
          runat="server"
          CssClass="text-danger"
          Text="Invalid username or password"
          Visible="false" />
      </div>

      <div class="text-center mb-3">
        <asp:HyperLink runat="server" NavigateUrl="~/User/ForgotPassword.aspx">Forgot password</asp:HyperLink>
      </div>

      <p>
        Do not have an account ?

        <asp:HyperLink runat="server" NavigateUrl="~/User/SignUp.aspx">Sign up</asp:HyperLink>
      </p>
    </div>
  </div>

  <script type="text/javascript">
    function togglePasswordVisibility() {
      const txtPassword = document.getElementById("<%= txtPassword.ClientID %>")

      if (txtPassword.getAttribute("type") == "password") {
        txtPassword.setAttribute("type", "text")
      } else {
        txtPassword.setAttribute("type", "password")
      }
    }
  </script>
</asp:Content>
