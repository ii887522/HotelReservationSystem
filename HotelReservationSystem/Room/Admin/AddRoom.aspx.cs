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

      string description = Request.Form["RoomDescTxt"];
      int availableRooms = Convert.ToInt32(Request.Form["NoRoomsTxt"]);
      int totalRooms = Convert.ToInt32(Request.Form["NoRoomsTxt"]);
      int maxAdults = Convert.ToInt32(Request.Form["MaxAdultsTxt"]);
      int maxChildren = Convert.ToInt32(Request.Form["MaxChildrenTxt"]);

      // insert record
      SqlCommand cmd = new SqlCommand("INSERT INTO Room (RoomId, RoomType, RoomDesc, AvailableQty, TotalQty, MaxAdults, MaxChildren, Price, Image) " +
        "VALUES (@RoomId, @RoomType, @RoomDesc, @AvailableQty, @TotalQty, @MaxAdults, @MaxChildren, @Price, @Image) ", con);
      cmd.Parameters.AddWithValue("@RoomId", id);
      cmd.Parameters.AddWithValue("@RoomType", RoomType.Text);
      cmd.Parameters.AddWithValue("@RoomDesc", RoomDescTxt.Text);
      cmd.Parameters.AddWithValue("@AvailableQty", int.Parse(NoRoomsTxt.Text));
      cmd.Parameters.AddWithValue("@TotalQty", int.Parse(NoRoomsTxt.Text));
      cmd.Parameters.AddWithValue("@MaxAdults", int.Parse(MaxAdultsTxt.Text));
      cmd.Parameters.AddWithValue("@MaxChildren", int.Parse(MaxChildrenTxt.Text));
      cmd.Parameters.AddWithValue("@Price", double.Parse(PriceTxt.Text));
      cmd.Parameters.AddWithValue("@Image", Path.GetFileName(RoomImg.FileName));

      if (RoomImg.HasFile)
      {
        string fileName = Path.GetFileName(RoomImg.PostedFile.FileName);
        string filePath = Server.MapPath("~/images/") + fileName;
        RoomImg.SaveAs(filePath);
      }

      cmd.ExecuteNonQuery();
      con.Close();

      // add data to cookie
      HttpCookie cookie = new HttpCookie("AddRoomData");
      cookie.Values["RoomID"] = id.ToString();
      cookie.Values["RoomType"] = RoomType.Text;
      cookie.Values["RoomDesc"] = RoomDescTxt.Text;
      cookie.Values["AvailableQty"] = NoRoomsTxt.Text;
      cookie.Values["TotalQty"] = NoRoomsTxt.Text;
      cookie.Values["MaxAdults"] = MaxAdultsTxt.Text;
      cookie.Values["MaxChildren"] = MaxChildrenTxt.Text;
      cookie.Values["Price"] = PriceTxt.Text;
      cookie.Values["Image"] = Path.GetFileName(RoomImg.FileName);
      Response.Cookies.Add(cookie);

      Response.Redirect("RoomAddSuccess.aspx");
    }

    protected void BtnReset_Click(object sender, EventArgs e)
    {
      RoomType.Text = "&lt; Select &gt;";
      RoomDescTxt.Text = "";
      NoRoomsTxt.Text = "";
      MaxAdultsTxt.Text = "";
      MaxChildrenTxt.Text = "";
      PriceTxt.Text = "";
      RoomImg.Attributes.Clear();
    }
  }
}
