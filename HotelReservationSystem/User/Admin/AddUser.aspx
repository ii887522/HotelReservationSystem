<%@ Page
  Title="Add A New User | RTC Hotel"
  Language="C#"
  MasterPageFile="~/AdminPage.Master"
  AutoEventWireup="true"
  CodeBehind="AddUser.aspx.cs"
  Inherits="HotelReservationSystem.User.Admin.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="row row-cols-auto">
    <div class="col">
      <asp:LinkButton runat="server" PostBackUrl="~/User/Admin/UserList.aspx" CausesValidation="false">
        <span class="bi bi-arrow-left h2"></span>
      </asp:LinkButton>
    </div>

    <div class="col px-0">
      <h2>Add A New User</h2>
    </div>
  </div>

  <div style="max-width: 512px;" class="card shadow-sm">
    <div class="card-body">
      <div>
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

      <div class="my-3">
        <asp:CheckBox ID="chkActive" runat="server" Text="&nbsp;&nbsp;Active" />
      </div>

      <div class="my-3">
        <asp:Label CssClass="form-label" runat="server" Text="RTC Coin" />

        <asp:TextBox
          ID="txtRtcCoin"
          CssClass="form-control"
          runat="server"
          TextMode="Number"
        />

        <asp:CompareValidator
          runat="server"
          CssClass="text-danger"
          Type="Integer"
          Operator="DataTypeCheck"
          ControlToValidate="txtRtcCoin"
          ErrorMessage="RTC coin must be a positive integer"
          Display="Dynamic"
        />

        <asp:CompareValidator
          runat="server"
          CssClass="text-danger"
          Operator="GreaterThanEqual"
          ValueToCompare="0"
          ControlToValidate="txtRtcCoin"
          ErrorMessage="RTC coin must be a positive integer"
          Display="Dynamic"
        />
      </div>

      <div class="my-3">
        <asp:Label ID="lblProfilePic" CssClass="form-label" runat="server" Text="Profile Picture" />

        <asp:Image
          ID="imgProfilePic"
          CssClass="img-thumbnail d-block"
          runat="server"
          ImageUrl="~/images/placeholder.png"
          Width="256"
          Height="256"
          ClientIDMode="Static"
        />

        <asp:FileUpload
          ID="fuProfilePic"
          accept="image/*"
          CssClass="form-control mt-2"
          runat="server"
          ClientIDMode="Static"
          Text="Profile Picture"
          onchange="uploadProfilePic()"
        />
      </div>

      <asp:Button
        ID="btnSubmit"
        runat="server"
        CssClass="btn btn-primary w-100 mt-3 shadow-sm"
        Text="Sign Up"
        OnClick="btnSubmit_Click"
      />
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

    function uploadProfilePic() {
      const image = document.getElementById("<%= imgProfilePic.ClientID %>")
      const fileUpload = document.getElementById("<%= fuProfilePic.ClientID %>")
      const file = fileUpload.files[0]

      if (file === undefined) {
        image.src = "/images/placeholder.png"
        return
      }

      if (!file.type.includes("image")) {
        alert("Profile picture must come from an image file")
        image.src = "/images/placeholder.png"
        fileUpload.value = ""
        return
      }

      const reader = new FileReader()

      reader.onloadend = () => {
        image.src = reader.result
      }

      reader.readAsDataURL(file)
    }
  </script>
</asp:Content>
