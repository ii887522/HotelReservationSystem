using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Payment
{
  public partial class Payment : System.Web.UI.Page
  {
    
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnCredit_Click(object sender, EventArgs e)
    {
      btnCredit.CssClass = "btn btn-outline-secondary active";
      btnDebit.CssClass = "btn btn-outline-secondary";
      panelOverlay.Style.Add("visibility", "hidden");
      panelPopUpPanel.Style.Add("visibility", "hidden");
    }

    protected void btnDebit_Click(object sender, EventArgs e)
    {
      btnDebit.CssClass = "btn btn-outline-secondary active";
      btnCredit.CssClass = "btn btn-outline-secondary";
      panelOverlay.Style.Add("visibility", "hidden");
      panelPopUpPanel.Style.Add("visibility", "hidden");
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
      //Response.Write("<script>alert('You are going to Homepage.')</script>");
      //Response.Write("<script>modal</script>");

      panelOverlay.Style.Add("visibility", "visible");
      panelPopUpPanel.Style.Add("visibility", "visible");

    }
    
  }
}
