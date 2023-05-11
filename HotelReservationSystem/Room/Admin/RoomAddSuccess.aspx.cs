using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Room.Admin
{
  public partial class RoomAddSuccess : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      string roomId = "";
      string roomType = "";
      string roomDesc = "";
      string availableQty = "";
      string totalQty = "";
      string maxAdults = "";
      string maxChildren = "";
      string price = "";
      string image = "";

      HttpCookie cookie = Request.Cookies["AddRoomData"];
      if (cookie != null)
      {
        roomId = cookie.Values["RoomID"];
        roomType = cookie.Values["RoomType"];
        roomDesc = cookie.Values["RoomDesc"];
        availableQty = cookie.Values["AvailableQty"];
        totalQty = cookie.Values["TotalQty"];
        maxAdults = cookie.Values["MaxAdults"];
        maxChildren = cookie.Values["MaxChildren"];
        price = cookie.Values["Price"];
        image = cookie.Values["Image"];
      }

      Content.Text = "Room ID: " + roomId + "<br/>Room Type: " + roomType + "<br/>Room Description: " +
        roomDesc + "<br/>Available Rooms: " + availableQty + "<br/>Total Rooms: " +
        totalQty + "<br/>Max. number of Adults" + maxAdults + "<br/>Max. number of Children" + maxChildren +
        "<br/>Room Price: " + price + "<br/>Image:<br/>" + "<img src=../../images/" + image + " height=150 width=150 />";
    }
  }
}
