using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.User
{
  public partial class Profile : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAll_Click(object sender, EventArgs e)
    {
      ResetOrderHistoryTab();
      btnAll.CssClass = "nav-link active";
      btnAll.Attributes.Add("aria-current", "page");
    }

    protected void btnReserved_Click(object sender, EventArgs e)
    {
      ResetOrderHistoryTab();
      btnReserved.CssClass = "nav-link active";
      btnReserved.Attributes.Add("aria-current", "page");
    }

    protected void btnPaid_Click(object sender, EventArgs e)
    {
      ResetOrderHistoryTab();
      btnPaid.CssClass = "nav-link active";
      btnPaid.Attributes.Add("aria-current", "page");
    }

    private void ResetOrderHistoryTab()
    {
      btnAll.CssClass = "nav-link";
      btnAll.Attributes.Remove("aria-current");
      btnReserved.CssClass = "nav-link";
      btnReserved.Attributes.Remove("aria-current");
      btnPaid.CssClass = "nav-link";
      btnPaid.Attributes.Remove("aria-current");
    }
  }
}
