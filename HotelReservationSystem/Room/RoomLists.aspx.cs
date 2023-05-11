using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Room_Detail
{
  public partial class RoomDetails : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Search_Click(object sender, EventArgs e)
    {
      // Retrieve the search criteria from the input fields
      string noRooms = NoRoomsText.Text;
      string noAdults = NoAdultsText.Text;
      string noChildren = NoChildrenText.Text;
      string roomType = DropDownList1.SelectedValue;
      string roomPriceRange = RoomPriceRange.SelectedValue;

      // Store the search criteria in session variables
      Session["NoRooms"] = noRooms;
      Session["NoAdults"] = noAdults;
      Session["NoChildren"] = noChildren;
      Session["RoomType"] = roomType;
      Session["RoomPriceRange"] = roomPriceRange;

      // Redirect to the search results page
      Response.Redirect("SearchResults.aspx");
    }
  }
}
