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
      // "ii887522", "admin@admin", "ii887522@gmail.com"

      if (!Membership.ValidateUser(txtUsername.Text, txtPassword.Text))
      {
        lblError.Visible = true;
        return;
      }

      var remember_me_cookie = new HttpCookie("remember_me", "1");
      remember_me_cookie.Expires = DateTime.Now.AddDays(chkRemember.Checked ? 7 : -1);
      Response.SetCookie(remember_me_cookie);
      Session["IsLoggedIn"] = true;
      FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, true);
    }
  }
}
