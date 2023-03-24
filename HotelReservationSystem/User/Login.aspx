<%@ Page
  Title="Login | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="Login.aspx.cs"
  Inherits="HotelReservationSystem.Login" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="max-width: 512px;" class="card m-auto">
    <div class="card-body">
      <h2>
        <i class="bi bi-door-open-fill me-2"></i>
        Login
      </h2>

      <div class="mt-4 mb-3">
        <asp:Label class="form-label" runat="server" Text="Username" />
        <asp:TextBox class="form-control" runat="server" />
      </div>

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

      <asp:CheckBox class="d-block my-3" runat="server" Text="&nbsp;&nbsp;&nbsp;Remember Me" />
      <asp:Button ID="btnLogin" runat="server" class="btn btn-primary w-100 mt-3 mb-4" Text="Login" OnClick="btnLogin_Click" />

      <div class="text-center mb-3">
        <asp:HyperLink runat="server" NavigateUrl="~/User/ForgotPassword.aspx">Forgot password</asp:HyperLink>
      </div>

      <p>
        Do not have an account ?
                   
        <asp:HyperLink runat="server" NavigateUrl="~/User/SignUp.aspx">Sign up</asp:HyperLink>
      </p>
    </div>
  </div>

  <script src="<%= ResolveUrl("~/Scripts/bootstrap.min.js") %>"></script>
</asp:Content>
