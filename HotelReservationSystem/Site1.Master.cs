using HotelReservationSystem;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
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
      var permaTokenCookie = new HttpCookie(Constants.PermaToken, "");
      permaTokenCookie.Expires = DateTime.Now.AddDays(-1);
      Response.SetCookie(permaTokenCookie);
      Session[Constants.AuthUserId] = null;
      FormsAuthentication.SignOut();
      Response.Redirect(HttpContext.Current.Request.Url.AbsolutePath);
    }
  }
}
