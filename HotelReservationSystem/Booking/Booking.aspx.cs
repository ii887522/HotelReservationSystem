using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace HotelReservationSystem.Booking
{
    public partial class Booking : System.Web.UI.Page
    {
        string strConnStr = ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString;
        string str;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
          SqlConnection con = new SqlConnection(strConnStr);
          con.Open();
          //str = "Select * from User where UserId = '" + Session["UserId"] + "'";
          str = "Select * from User where Id = '" + Session[Constants.AuthUserId] + "'";
          cmd = new SqlCommand(str, con);
          SqlDataAdapter da = new SqlDataAdapter(cmd);
          DataSet ds = new DataSet();
          try
          {
            da.Fill(ds);
            txtName.Text = ds.Tables[0].Rows[0]["Username"].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
          }
          catch (Exception ex)
          {
            lblError.Text = ex.Message;
          }
        }

        protected void calendarStartDate_SelectionChanged(object sender, EventArgs e)
        {
          txtBkStartDate.Text = calendarStartDate.SelectedDate.ToShortDateString();
        }

        protected void calendarEndDate_SelectionChanged(object sender, EventArgs e)
        {
          txtBkEndDate.Text = calendarEndDate.SelectedDate.ToShortDateString();
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
    protected void BookRoom_Click(object sender, EventArgs e)
        {
      //string strConnStr3 = ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString;
      //SqlConnection conn = new SqlConnection(strConnStr3);
      //conn.Open();
      //string searchBookingQuery = "SELECT COUNT (*) AS table_row FROM Booking";
      //string addBookingQuery = "INSERT INTO Booking (BookingId, UserId, StartBookDate, EndBookDate, Qty, RoomId, OrderId) VALUES (@VBookingID, @UserID, @StartBookDate, @EndBookDate, @Qty, @RoomID, @OrderID)";

      //string bookidfront = "B";
      //int bookidback;

      //int userid = 1, orderid = 1, roomid = 1;
      //SqlCommand searchBooking = new SqlCommand(searchBookingQuery, conn);
      //int totalRow = (int)searchBooking.ExecuteScalar();
      //Console.WriteLine(totalRow);

      //bookidback = totalRow + 1;

      //string bookid = bookidfront + bookidback.ToString();

      //SqlCommand addBookingRecord = new SqlCommand(addBookingQuery, conn);

      //addBookingRecord.Parameters.AddWithValue("@VBookingID", bookid);
      //addBookingRecord.Parameters.AddWithValue("@UserID", userid);
      //addBookingRecord.Parameters.AddWithValue("@StartBookDate", txtBkStartDate.Text);
      //addBookingRecord.Parameters.AddWithValue("@EndBookDate", txtBkStartDate.Text);
      //addBookingRecord.Parameters.AddWithValue("@Qty", quantityNum.Text);
      //addBookingRecord.Parameters.AddWithValue("@RoomID", roomid);
      //addBookingRecord.Parameters.AddWithValue("@OrderID", orderid);

      //addBookingRecord.ExecuteNonQuery();
      //conn.Close();

      Response.Redirect("~/MakePayment/Payment.aspx");
        }
    }
 }
