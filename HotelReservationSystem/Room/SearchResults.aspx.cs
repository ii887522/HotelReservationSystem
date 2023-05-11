using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Room
{
  public partial class SearchResults : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      // Retrieve the search criteria from the session variables
      string noRooms = (string)Session["NoRooms"];
      string noAdults = (string)Session["NoAdults"];
      string noChildren = (string)Session["NoChildren"];
      // ---- optional fields ----
      string roomType = (string)Session["RoomType"];
      if (roomType == "< Select >")
      {
        // if user don't select room type, then assign an empty string to roomType
        roomType = "";
      }
      string roomPriceRange = (string)Session["RoomPriceRange"];

      // assign minimum and maximum room price depend on roomPriceRange
      double minPrice, maxPrice;
      if (roomPriceRange == "RM 0 - RM 150")
      {
        minPrice = 0;
        maxPrice = 150;
      } else if (roomPriceRange == "RM 151 - RM 300")
      {
        minPrice = 151;
        maxPrice = 300;
      } else if (roomPriceRange == "RM 301 - RM 450")
      {
        minPrice = 301;
        maxPrice = 450;
      } else if (roomPriceRange == "RM 451 - RM 600")
      {
        minPrice = 451;
        maxPrice = 600;
      } else if (roomPriceRange == "RM601+")
      {
        minPrice = 601;
        maxPrice = 0;
      } else
      {
        minPrice = 0;
        maxPrice = 0;
      }

      // Perform the search using the search criteria
      List<Rooms> rooms = new List<Rooms>();

      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      con.Open();

      // sql command
      SqlCommand cmd;
      if (string.IsNullOrEmpty(roomType) && string.IsNullOrEmpty(roomPriceRange))
      {
        cmd = new SqlCommand("SELECT * FROM Room WHERE AvailableQty>=@NoRooms AND MaxAdults>=@NumAdults AND MaxChildren>=@NumChildren", con);
      } else if (roomType == "")
      {
        if (maxPrice == 0)
        {
          cmd = new SqlCommand("SELECT * FROM Room WHERE AvailableQty>=@NoRooms AND MaxAdults>=@NumAdults AND MaxChildren>=@NumChildren "
            + "Price>=@Price", con);
          cmd.Parameters.AddWithValue("@Price", minPrice);
        } else
        {
          cmd = new SqlCommand("SELECT * FROM Room WHERE AvailableQty>=@NoRooms AND MaxAdults>=@NumAdults AND MaxChildren>=@NumChildren "
            + "Price BETWEEN @MinPrice AND @MaxPrice", con);
          cmd.Parameters.AddWithValue("@MinPrice", minPrice);
          cmd.Parameters.AddWithValue("@MaxPrice", maxPrice);
        }
      } else if (string.IsNullOrEmpty(roomPriceRange))
      {
        cmd = new SqlCommand("SELECT * FROM Room WHERE AvailableQty>=@NoRooms AND MaxAdults>=@NumAdults AND MaxChildren>=@NumChildren AND RoomType=@RoomType", con);
        cmd.Parameters.AddWithValue("@RoomType", roomType);
      } else
      {
        if (maxPrice == 0)
        {
          cmd = new SqlCommand("SELECT * FROM Room WHERE AvailableQty>=@NoRooms AND MaxAdults>=@NumAdults AND MaxChildren>=@NumChildren AND RoomType=@RoomType "
            + "Price>=@Price", con);
          cmd.Parameters.AddWithValue("@RoomType", roomType);
          cmd.Parameters.AddWithValue("@Price", minPrice);
        }
        else
        {
          cmd = new SqlCommand("SELECT * FROM Room WHERE AvailableQty>=@NoRooms AND MaxAdults>=@NumAdults AND MaxChildren>=@NumChildren AND RoomType=@RoomType "
            + "Price BETWEEN @MinPrice AND @MaxPrice", con);
          cmd.Parameters.AddWithValue("@RoomType", roomType);
          cmd.Parameters.AddWithValue("@MinPrice", minPrice);
          cmd.Parameters.AddWithValue("@MaxPrice", maxPrice);
        }
      }
      cmd.Parameters.AddWithValue("@NoRooms", noRooms);
      cmd.Parameters.AddWithValue("@NumAdults", noAdults);
      cmd.Parameters.AddWithValue("@NumChildren", noChildren);

      SqlDataReader dr = cmd.ExecuteReader();

      while (dr.Read())
      {
        Rooms room = new Rooms();
        room.RoomType = dr["RoomType"].ToString();
        room.RoomDesc = dr["RoomDesc"].ToString();
        room.AvailableQty = int.Parse(dr["AvailableQty"].ToString());
        room.TotalQty = int.Parse(dr["TotalQty"].ToString());
        room.MaxAdults = int.Parse(dr["MaxAdults"].ToString());
        room.MaxChildren = int.Parse(dr["MaxChildren"].ToString());
        room.Price = double.Parse(dr["MaxChildren"].ToString());
        room.Image = "~/images/" + dr["Image"].ToString();
        rooms.Add(room);
      }
      con.Close();

      if (rooms.Count == 0)
      {
        // if no result found
        NotFound.Text = "<img src=\"https://cdn1.iconfinder.com/data/icons/error-warning-triangles/24/exclamation-triangle-512.png\" width=\"16\" height=\"16\" /> No results found on your search.";
      } else
      {
        rptSearchResults.DataSource = rooms;
        rptSearchResults.DataBind();
      }
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
