using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Room.RoomDetails
{
  public partial class DeluxeRoomDetails : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      //string roomType = Request.QueryString["roomtype"];
      //StringBuilder sb = new StringBuilder();

      //switch (roomType)
      //{
      //  case "double":
      //    sb.Append("<h1>=== Double Room ===</h1>");
      //    break;
      //  case "deluxe":
      //    sb.Append("<h1>=== Deluxe Room ===</h1>");
      //    break;
      //  case "triple":
      //    sb.Append("<h1>=== Triple Room ===</h1>");
      //    break;
      //  default:
      //    // Display default content if no room type was specified
      //    break;
      //}
    }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
          // get the rating and comment values from the UI
          string rating = Request.Form["rating"];
          string comment = commentBox.Text;

      //var commentId = Models.Comment.Comment(rating.selectedItem, comment.Text.Trim())
      //.ProviderUserKey.ToString();

      //Models.User.Create(rating, comment.Text.Trim());

          // save the rating and comment to the database
          string connectionString = ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString;
          using (SqlConnection connection = new SqlConnection(connectionString))
          {
            connection.Open();
        //string query = "SELECT RoomId from Room WHERE RoomId = 1";
            string query = "INSERT INTO [Comment] (Rating, Comment) VALUES (@Rating, @Comment)";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
              command.Parameters.AddWithValue("@Rating", rating);
              command.Parameters.AddWithValue("@Comment", comment);
              connection.Open();
              command.ExecuteNonQuery();
            }
          }

      // display a success message
      Response.Write("Your rating and comment have been saved.");
        }
    }
}
