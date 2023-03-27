using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class SearchRooms : System.Web.UI.Page
    {
        //private List<Hotel> SearchHotels(string location, DateTime checkin, DateTime checkout, int numRooms, int numAdults, int numChildren)
        //{
        //    // Perform the search based on the criteria and return a list of hotels
        //    List<Hotel> hotels = new List<Hotel>();

        //    // Example code for searching hotels
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //    con.Open();

        //    SqlCommand cmd = new SqlCommand("SELECT * FROM Hotels WHERE Location=@Location AND NumRooms>=@NumRooms AND NumAdults>=@NumAdults AND NumChildren>=@NumChildren", con);
        //    cmd.Parameters.AddWithValue("@Location", location);
        //    cmd.Parameters.AddWithValue("@NumRooms", numRooms);
        //    cmd.Parameters.AddWithValue("@NumAdults", numAdults);
        //    cmd.Parameters.AddWithValue("@NumChildren", numChildren);

        //    SqlDataReader dr = cmd.ExecuteReader();

        //    while (dr.Read())
        //    {
        //        Hotel hotel = new Hotel();
        //        hotel.Id = int.Parse(dr["Id"].ToString());
        //        hotel.Name = dr["Name"].ToString();
        //        hotel.Location = dr["Location"].ToString();
        //        hotel.NumRooms = int.Parse(dr["NumRooms"].ToString());
        //        hotel.NumAdults = int.Parse(dr["NumAdults"].ToString());
        //        hotel.NumChildren = int.Parse(dr["NumChildren"].ToString());
        //        hotel.Price = decimal.Parse(dr["Price"].ToString());
        //        hotels.Add(hotel);
        //    }

        //    con.Close();

        //    return hotels;
        //}

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // Get the search criteria entered by the user
            /*
            string location = txtLocation.Text;
            DateTime checkin = DateTime.Parse(txtCheckin.Text);
            DateTime checkout = DateTime.Parse(txtCheckout.Text);
            int numRooms = int.Parse(ddlNumRooms.SelectedValue);
            int numAdults = int.Parse(ddlNumAdults.SelectedValue);
            int numChildren = int.Parse(ddlNumChildren.SelectedValue);
            */

            // Call a method to search for hotels based on the criteria
            //List<Hotel> hotels = SearchHotels(location, checkin, checkout, numRooms, numAdults, numChildren);

            // Bind the search results to a GridView or Repeater control
            //gvSearchResults.DataSource = hotels;
            //gvSearchResults.DataBind();
        }
    }
}