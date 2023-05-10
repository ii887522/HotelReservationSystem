using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using HotelReservationSystem;

namespace HotelReservationSystem.User
{
  public partial class SignUp : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void usernameValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
      args.IsValid = Models.User.IsUsernameUnique(value: txtUsername.Text.Trim());
    }

    protected void emailValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
      args.IsValid = Models.User.IsEmailUnique(value: txtEmailAddr.Text.Trim());
    }

    protected void phoneValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
      args.IsValid = Models.User.IsPhoneUnique(value: txtPhone.Text.Trim());
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
      if (!Page.IsValid) return;
      Roles.AddUserToRole(txtUsername.Text.Trim(), Constants.RoleUser);
      var roleId = Models.User.GetUserId(userName: txtUsername.Text.Trim());

      var membershipId =
        Membership.CreateUser(txtUsername.Text.Trim(), txtPassword.Text, txtEmailAddr.Text.Trim())
          .ProviderUserKey.ToString();

      Models.User.Create(membershipId: membershipId, roleId: roleId, mobilePhone: txtPhone.Text.Trim());
      Response.Redirect("Login.aspx");
    }
  }
}
