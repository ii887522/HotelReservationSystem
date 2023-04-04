using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Room.Admin
{
  public partial class AddRoom : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
      con.Open();

      // get the room id
      int id = 0;
      SqlCommand getRow = new SqlCommand("SELECT MAX(RoomId) FROM Room", con);
      SqlDataReader reader = getRow.ExecuteReader();
      if (reader.Read())
      {
        id = Convert.ToInt32(reader[0]) + 1;
      }
      reader.Close();

      int noRooms = Convert.ToInt32(Request.Form["NoRoomTxt"]);
      int noAdults = Convert.ToInt32(Request.Form["NoAdultsTxt"]);
      int noChildren = Convert.ToInt32(Request.Form["NoChildrenTxt"]);

      // insert record
      SqlCommand cmd = new SqlCommand("INSERT INTO Room (RoomId, RoomName, RoomLocation, NoRooms, MaxAdults, MaxChildren, PricePerAdult, PricePerChildren, Image) " +
        "VALUES (@RoomId, @RoomName, @RoomLocation, @NoRooms, @MaxAdults, @MaxChildren, @PricePerAdult, @PricePerChildren, @Image) ", con);
      cmd.Parameters.AddWithValue("@RoomId", id);
      cmd.Parameters.AddWithValue("@RoomName", RoomNameTxt.Text);
      cmd.Parameters.AddWithValue("@RoomLocation", RoomLocationTxt.Text);
      cmd.Parameters.AddWithValue("@NoRooms", noRooms);
      cmd.Parameters.AddWithValue("@MaxAdults", noAdults);
      cmd.Parameters.AddWithValue("@MaxChildren", noChildren);
      cmd.Parameters.AddWithValue("@PricePerAdult", PriceAdult.Text);
      cmd.Parameters.AddWithValue("@PricePerChildren", PriceChildren.Text);
      cmd.Parameters.AddWithValue("@Image", "../images/" + Path.GetFileName(ImageFile.FileName));

      if (ImageFile.HasFile)
      {
        string fileName = Path.GetFileName(ImageFile.PostedFile.FileName);
        string filePath = Server.MapPath("~/images/") + fileName;
        ImageFile.SaveAs(filePath);
      }

      cmd.ExecuteNonQuery();
      con.Close();

      // add data to cookie
      HttpCookie cookie = new HttpCookie("AddRoomData");
      cookie.Values["RoomID"] = id.ToString();
      cookie.Values["RoomName"] = RoomNameTxt.Text;
      cookie.Values["RoomLocation"] = RoomLocationTxt.Text;
      cookie.Values["NoRooms"] = noRooms.ToString();
      cookie.Values["MaxAdults"] = noAdults.ToString();
      cookie.Values["MaxChildren"] = noChildren.ToString();
      cookie.Values["PricePerAdult"] = PriceAdult.Text;
      cookie.Values["PricePerChildren"] = PriceChildren.Text;
      cookie.Values["Image"] = Path.GetFileName(ImageFile.FileName);
      Response.Cookies.Add(cookie);

      Response.Redirect("RoomAddSuccess.aspx");
    }
  }
}
