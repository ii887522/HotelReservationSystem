using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Payment
{
  public partial class Receipt : System.Web.UI.Page
  {
    string strConnStr = ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString;
    string str;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        lblDate.Text = DateTime.Now.Date.ToString();

        SqlConnection con = new SqlConnection(strConnStr);
        con.Open();
        //str = "SELECT * from User WHERE FullName = '" + Session["FullName"] + "'";
        str = "SELECT * from Payment WHERE PaymentId = 'PAY0013'";
        cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        try
        {
          da.Fill(ds);
          lblPaymentID.Text = ds.Tables[0].Rows[0]["PaymentId"].ToString(); 
          lblCardtype.Text = ds.Tables[0].Rows[0]["PaymentMethod"].ToString();
          lblCardHolder.Text = ds.Tables[0].Rows[0]["CardHolderName"].ToString();
          lblCardNum.Text = ds.Tables[0].Rows[0]["CardNum"].ToString();

        }
        catch (Exception ex)
        {
          lblError.Text = ex.Message;
        }
        
      }

    }
  }
}
