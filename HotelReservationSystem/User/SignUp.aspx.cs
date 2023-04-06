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
      args.IsValid = Models.User.IsUsernameUnique(txtUsername.Text.Trim());
    }

    protected void emailValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
      args.IsValid = Models.User.IsEmailUnique(txtEmailAddr.Text.Trim());
    }

    protected void phoneValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
      args.IsValid = Models.User.IsPhoneUnique(txtPhone.Text.Trim());
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    { 
      var userId =
        Membership.CreateUser(txtUsername.Text.Trim(), txtPassword.Text, txtEmailAddr.Text.Trim())
          .ProviderUserKey.ToString();

      Models.User.Create(userId, txtPhone.Text.Trim());
      Response.Redirect("Login.aspx");
    }
  }
}
