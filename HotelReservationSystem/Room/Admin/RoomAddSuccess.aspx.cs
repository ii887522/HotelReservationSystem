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
      string roomName = "";
      string roomLocation = "";
      string noRooms = "";
      string maxAdults = "";
      string maxChildren = "";
      string priceAdult = "";
      string priceChildren = "";
      string image = "";

      HttpCookie cookie = Request.Cookies["AddRoomData"];
      if (cookie != null)
      {
        roomId = cookie.Values["RoomID"];
        roomName = cookie.Values["RoomName"];
        roomLocation = cookie.Values["RoomLocation"];
        noRooms = cookie.Values["NoRooms"];
        maxAdults = cookie.Values["MaxAdults"];
        maxChildren = cookie.Values["MaxChildren"];
        priceAdult = cookie.Values["PricePerAdult"];
        priceChildren = cookie.Values["PricePerChildren"];
        image = cookie.Values["Image"];
      }
      /*
      TextBox RoomName = PreviousPage.FindControl("RoomNameTxt") as TextBox;
      TextBox RoomLocation = PreviousPage.FindControl("RoomLocationTxt") as TextBox;
      TextBox NoRooms = PreviousPage.FindControl("NoRoomsTxt") as TextBox;
      TextBox MaxAdults = PreviousPage.FindControl("NoAdultsTxt") as TextBox;
      TextBox MaxChildren = PreviousPage.FindControl("NoChildrenTxt") as TextBox;
      TextBox PriceAdult = PreviousPage.FindControl("PriceAdult") as TextBox;
      TextBox PriceChildren = PreviousPage.FindControl("PriceChildren") as TextBox;
      */

      Content.Text = "Room ID: " + roomId + "<br/>Room Name: " + roomName + "<br/>Room Location: " +
        roomLocation + "<br/>No. Rooms: " + noRooms + "<br/>Max. number of Adults: " +
        maxAdults + "<br/>Max. number of Children" + maxChildren +
        "<br/>Price per Adult: " + priceAdult + "<br/>Price per Children: " + priceChildren
        + "<br/>Image: " + image;
    }
  }
}
