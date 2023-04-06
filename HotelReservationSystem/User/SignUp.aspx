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
        <span class="text-bold text-danger">*</span>
        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" CausesValidation="true" />

        <asp:RequiredFieldValidator
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Username is required"
          ControlToValidate="txtUsername"
          Display="Dynamic"
        />

        <asp:CustomValidator
          ID="usernameValidator"
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Username is already taken"
          ControlToValidate="txtUsername"
          OnServerValidate="usernameValidator_ServerValidate"
          Display="Dynamic"
        />
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Password" />
        <span class="text-bold text-danger">*</span>

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

        <asp:RequiredFieldValidator
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Password is required"
          ControlToValidate="txtPassword"
          Display="Dynamic"
        />

        <asp:RegularExpressionValidator
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Password must have at least 8 characters including at least 1 alphabet, 1 digit and 1 special character (e.g.: !,@,#)"
          ControlToValidate="txtPassword"
          ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$"
          Display="Dynamic"
        />
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Retype password" />
        <span class="text-danger text-bold">*</span>

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

        <asp:RequiredFieldValidator
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Retype password is required"
          ControlToValidate="txtRetypePassword"
          Display="Dynamic"
        />

        <asp:RegularExpressionValidator
          CssClass="text-danger"
          runat="server"
          ErrorMessage="&#x2022 Password must have at least 8 characters including at least 1 alphabet, 1 digit and 1 special character (e.g.: !,@,#)<br />"
          ControlToValidate="txtRetypePassword"
          ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$"
          Display="Dynamic"
        />

        <asp:CompareValidator
          CssClass="text-danger"
          runat="server"
          ErrorMessage="&#x2022 Retype password must be the same as password"
          ControlToValidate="txtRetypePassword"
          ControlToCompare="txtPassword"
          Operator="Equal"
          Display="Dynamic"
        />
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Email address" />
        <span class="text-danger text-bold">*</span>

        <asp:TextBox
          ID="txtEmailAddr"
          CssClass="form-control"
          runat="server"
          TextMode="Email"
          placeholder="abc@example.com" />

        <asp:RequiredFieldValidator
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Email address is required"
          ControlToValidate="txtEmailAddr"
          Display="Dynamic"
        />

        <asp:CustomValidator
          ID="emailValidator"
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Email address is already used to sign up"
          ControlToValidate="txtEmailAddr"
          OnServerValidate="emailValidator_ServerValidate"
          Display="Dynamic"
        />
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="Mobile phone" />

        <asp:TextBox
          ID="txtPhone"
          CssClass="form-control"
          runat="server"
          TextMode="Phone"
          placeholder="+60123456789"
        />

        <asp:RegularExpressionValidator
          runat="server"
          CssClass="text-danger"
          ErrorMessage="Invalid mobile phone number format"
          ControlToValidate="txtPhone"
          ValidationExpression="^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"
          Display="Dynamic"
        />

        <asp:CustomValidator
          ID="phoneValidator"
          CssClass="text-danger"
          runat="server"
          ErrorMessage="Phone number is already used to sign up"
          ControlToValidate="txtPhone"
          OnServerValidate="phoneValidator_ServerValidate"
          Display="Dynamic"
        />
      </div>

      <asp:Button
        ID="btnSignUp"
        runat="server"
        CssClass="btn btn-primary w-100 mt-3 mb-4 shadow-sm"
        Text="Sign Up"
        OnClick="btnSignUp_Click" />

      <asp:HyperLink runat="server" NavigateUrl="~/User/Login.aspx">Back to login</asp:HyperLink>
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
