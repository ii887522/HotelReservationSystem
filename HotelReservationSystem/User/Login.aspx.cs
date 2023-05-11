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
      if (!Membership.ValidateUser(txtUsername.Text.Trim(), txtPassword.Text))
      {
        lblError.Visible = true;
        return;
      }

      var userId = Models.User.GetIdFromUserName(userName: txtUsername.Text.Trim()); 

      if (chkRemember.Checked)
      {
        // Generate a random GUID
        var permaToken = Guid.NewGuid();
        Models.User.Update(userId: userId, permaToken: permaToken);
        var permaTokenCookie = new HttpCookie(Constants.PermaToken, permaToken.ToString());
        permaTokenCookie.Expires = DateTime.Now.AddDays(7);
        Response.SetCookie(permaTokenCookie);
      }

      Session[Constants.AuthUserId] = userId;
      FormsAuthentication.RedirectFromLoginPage(txtUsername.Text.Trim(), true);
    }
  }
}
