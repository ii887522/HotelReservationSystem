using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Room.RoomDetails
{
  public partial class DoubleDoubleRm : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

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

    protected void btnBookNow_Click(object sender, EventArgs e)
    {

    }
  }
}
