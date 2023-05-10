using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.User
{
  public partial class Login : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
      if (!Membership.ValidateUser(txtUsername.Text, txtPassword.Text))
      {
        lblError.Visible = true;
        return;
      }

      var rememberMeCookie = new HttpCookie(Constants.RememberMe, "1");
      rememberMeCookie.Expires = DateTime.Now.AddDays(chkRemember.Checked ? 7 : -1);
      Response.SetCookie(rememberMeCookie);
      Session[Constants.IsLoggedIn] = true;
      FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, true);
    }
  }
}
