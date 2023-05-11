using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.AddToCart
{
  public partial class Cart : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      int total;
      total = 0;
      
      //lblTotalPriceOfBooking.Text = total.ToString;
    }
    void Page_Error()
    {
      Response.Write("<p><strong><h3><br/>Sorry. One error is encountered in this page: <br/><br/>");
      Response.Write(Server.GetLastError().Message + "<h3/></strong></p>");
      Server.ClearError();
    }
  }
  
}
