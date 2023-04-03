using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Booking
{
  public partial class ConfirmBooking : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
      {
        TextBox Name = PreviousPage.FindControl("txtName") as TextBox;
        TextBox Email = PreviousPage.FindControl("txtEmail") as TextBox;
        DropDownList RoomType = PreviousPage.FindControl("ddlRoomType") as DropDownList;
        DropDownList NumOfGuest = PreviousPage.FindControl("ddlNumOfGuest") as DropDownList;
        DropDownList NumOfChildren = PreviousPage.FindControl("ddlNumOfChildren") as DropDownList;
        //TextBox RoomPrice = PreviousPage.FindControl("txtPrice") as TextBox;
        TextBox StartDate = PreviousPage.FindControl("txtBkStartDate") as TextBox;
        TextBox EndDate = PreviousPage.FindControl("txtBkEndDate") as TextBox;
        TextBox SpecialRequest = PreviousPage.FindControl("txtSpecialRequest") as TextBox;

        lblDetail.Text = "Start Booking Date: " + StartDate.Text + "</br>" +
          "End Booking Date: " + EndDate.Text + "</br>" +
          "Name: " + Name.Text + "</br>" + "Email: " + Email.Text + "</br>" +
          "Room Type: " + RoomType.SelectedItem.Value + "</br>" +
          "Number of Guest: " + NumOfGuest.SelectedItem.Value + "</br>" +
          "Number of Children: " + NumOfChildren.SelectedItem.Value + "</br>" +
          "Special Request: " + SpecialRequest.Text;
      }
    }
  }
}
