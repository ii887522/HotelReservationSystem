using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HotelReservationSystem.Booking
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calendarStartDate_SelectionChanged(object sender, EventArgs e)
        {
          txtBkStartDate.Text = calendarStartDate.SelectedDate.ToShortDateString();
        }

        protected void calendarEndDate_SelectionChanged(object sender, EventArgs e)
        {
          txtBkEndDate.Text = calendarEndDate.SelectedDate.ToShortDateString();
        }
        protected void BookRoom_Click(object sender, EventArgs e)
        {

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {

        }

        protected void IncreaseButton_Click(object sender, ImageClickEventArgs e)
        {
          int currentQuantity = Int32.Parse(quantityNum.Text);
          if (currentQuantity < 10)
          {
            currentQuantity++;
            quantityNum.Text = currentQuantity.ToString();
          }
        }

        protected void DecreaseButton_Click(object sender, ImageClickEventArgs e)
        {
          int currentQuantity = Int32.Parse(quantityNum.Text);
          if (currentQuantity > 1)
          {
            currentQuantity--;
            quantityNum.Text = currentQuantity.ToString();
          }
        }
  }
}
