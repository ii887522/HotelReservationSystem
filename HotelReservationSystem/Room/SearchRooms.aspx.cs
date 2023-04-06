using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HotelReservationSystem;

namespace Assignment
{
    public partial class SearchRooms : System.Web.UI.Page
    {
    private List<Hotel> SearchHotels(string location, int numRooms, int numAdults, int numChildren)
    {
      // Perform the search based on the criteria and return a list of hotels
      List<Hotel> hotels = new List<Hotel>();

      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      con.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM Room " +
        "WHERE RoomLocation=@RoomLocation AND NoRooms>=@NumRooms " +
        "AND MaxAdults>=@NumAdults AND MaxChildren>=@NumChildren", con);
      cmd.Parameters.AddWithValue("@RoomLocation", location);
      cmd.Parameters.AddWithValue("@NumRooms", numRooms);
      cmd.Parameters.AddWithValue("@NumAdults", numAdults);
      cmd.Parameters.AddWithValue("@NumChildren", numChildren);

      SqlDataReader dr = cmd.ExecuteReader();

      while (dr.Read())
      {
        Hotel hotel = new Hotel();
        hotel.RoomId = int.Parse(dr["RoomId"].ToString());
        hotel.RoomName = dr["RoomName"].ToString();
        hotel.RoomLocation = dr["RoomLocation"].ToString();
        hotel.NoRooms = int.Parse(dr["NoRooms"].ToString());
        hotel.MaxAdults = int.Parse(dr["MaxAdults"].ToString());
        hotel.MaxChildren = int.Parse(dr["MaxChildren"].ToString());
        hotel.PricePerAdult = double.Parse(dr["PricePerAdult"].ToString());
        hotel.PricePerChildren = double.Parse(dr["PricePerChildren"].ToString());
        hotel.Image = dr["Image"].ToString();
        // Calculate Price:
        // (PricePerAdult * numAdults) + (PricePerChildren * numChildren)
        hotels.Add(hotel);
      }

      con.Close();

      return hotels;
    }

    protected void btnSearch_Click(object sender, EventArgs e) {
      // Get the search criteria entered by the user
      int numRooms = 0;
      int numAdults = 0;
      int numChildren = 0;
      string location = LocationText.Text;
      //DateTime checkin = DateTime.Parse(txtCheckin.Text);
      //DateTime checkout = DateTime.Parse(txtCheckout.Text);
      if (NoRoomsText.Text != "")
      {
        numRooms = int.Parse(NoRoomsText.Text);
      }
      if (NoAdultsText.Text != "")
      {
        numAdults = int.Parse(NoAdultsText.Text);
      }
      if (NoChildrenText.Text != "")
      {
        numChildren = int.Parse(NoChildrenText.Text);
      }

      // Call a method to search for hotels based on the criteria
      List<Hotel> hotels = SearchHotels(location, numRooms, numAdults, numChildren);

      // Bind the search results
      SearchResult.DataSource = hotels;
      SearchResult.DataBind();
    }

    protected void SearchResult_SelectedIndexChanged(object sender, EventArgs e)
    {
            btnBookRoom.Visible = true;
    }
  }
}
