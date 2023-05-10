using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.User.Admin
{
  public partial class UserList : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
      if (Models.User.Delete(id: e.Keys[0].ToString()) == 1)
      {
        var userName = e.Values[0].ToString();
        Membership.DeleteUser(userName);
        Roles.RemoveUserFromRole(userName, Models.User.GetRole(userName: userName));
        Models.User.DeleteFromAspNet(userName);
      }

      gvUsers.DataBind();
      e.Cancel = true;
    }
  }
}
