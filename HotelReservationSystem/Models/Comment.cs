using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace HotelReservationSystem.Models
{
  public class Comment
  {
    // save the rating and comment to the database
    //public static void Insert(int rating, string comment)
    //{
    //  var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
    //  conn.Open();
    //  var cmd = new SqlCommand("INSERT INTO [Comment] (Rating, Comment) VALUES (@Rating, @Comment)", conn);
    //  cmd.Parameters.AddWithValue("@Rating", rating);
    //  cmd.Parameters.AddWithValue("@Comment", comment);
    //  cmd.ExecuteNonQuery();
    //  conn.Close();
    //}
  }
}
