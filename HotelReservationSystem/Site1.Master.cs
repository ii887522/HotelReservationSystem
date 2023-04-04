using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
  public partial class Site1 : System.Web.UI.MasterPage
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
      var remember_me_cookie = new HttpCookie("remember_me", "1");
      remember_me_cookie.Expires = DateTime.Now.AddDays(-1);
      Response.SetCookie(remember_me_cookie);
      Session["IsLoggedIn"] = false;
      Response.Redirect(HttpContext.Current.Request.Url.AbsolutePath);
    }
  }
}
