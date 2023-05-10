using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem.Payment
{
  public partial class Payment : System.Web.UI.Page
  {
    
    string strConnStr = ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString;
    string str;
     SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

      if (!IsPostBack)
      {
        SqlConnection con = new SqlConnection(strConnStr);
        con.Open();
        str = "Select * from User where UserId = '" + Session["UserId"] + "'";
        cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        try
        {
          da.Fill(ds);
          txtName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
          txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
          txtPhone.Text = ds.Tables[0].Rows[0]["MobilePhone"].ToString();


        }
        catch (Exception ex)
        {
          lblError.Text = ex.Message;
        }

        int currentYear = DateTime.Now.Year;
        ddlExpYear.Items.Insert(0, "-Select Year-");
        int index = 1;
        for (int i = 0; i <= 10; i++)
        {

          ddlExpYear.Items.Insert(index, (currentYear + i).ToString());
          index++;
        }
        con.Close();
      }

    }

    protected void btnCredit_Click(object sender, EventArgs e)
    {
      
      btnCredit.CssClass = "btn btn-outline-secondary active";
      btnDebit.CssClass = "btn btn-outline-secondary";
      panelOverlay.Style.Add("visibility", "hidden");
      panelPopUpPanel.Style.Add("visibility", "hidden");

    }

    protected void btnDebit_Click(object sender, EventArgs e)
    {
      
      btnDebit.CssClass = "btn btn-outline-secondary active";
      btnCredit.CssClass = "btn btn-outline-secondary";
      panelOverlay.Style.Add("visibility", "hidden");
      panelPopUpPanel.Style.Add("visibility", "hidden");
      
    }

    
    protected void btnBack_Click(object sender, EventArgs e)
    {
      //Response.Write("<script>alert('You are going to Homepage.')</script>");
      //Response.Write("<script>modal</script>");

      panelOverlay.Style.Add("visibility", "visible");
      panelPopUpPanel.Style.Add("visibility", "visible");

    }

    protected void btnPay_Click(object sender, EventArgs e)
    {
      string strConnStr3 = ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString;
      SqlConnection conn = new SqlConnection(strConnStr3);
      conn.Open();

      string searchPaymentQuery = "SELECT COUNT (*) AS table_row FROM Payment";
      string addPaymentQuery = "INSERT INTO Payment (PaymentId, PaymentMethod, CardNum, CardCvv, CardHolderName, ExpMonth, ExpYear, Userid, OrderId) VALUES (@PAYID, @PAYMENTMETHOD, @CARDNO, @CARDCVVNO, @CARDNAME, @EXPM, @EXPY, @USERID, @ORDERID)";//

      string payidfront = "PAY00";
      int payidback;

      int userid = 1, orderid = 1; ////***

      //Search payment table row 
      SqlCommand searchPayment = new SqlCommand(searchPaymentQuery, conn);
      int totalRow = (int)searchPayment.ExecuteScalar();
      Console.WriteLine(totalRow);

      payidback = totalRow + 1;
      
      string payid = payidfront + payidback.ToString();
      
      SqlCommand addPaymentRecord = new SqlCommand(addPaymentQuery, conn);

      addPaymentRecord.Parameters.AddWithValue("@PAYID", payid);
      if (btnCredit.CssClass == "btn btn-outline-secondary active")
      {
        addPaymentRecord.Parameters.AddWithValue("@PAYMENTMETHOD", "Credit");
      }
      else if (btnDebit.CssClass == "btn btn-outline-secondary active")
      {
        addPaymentRecord.Parameters.AddWithValue("@PAYMENTMETHOD", "Debit");
      }
      else
      {
        //Error message
      }
      addPaymentRecord.Parameters.AddWithValue("@CARDNO", txtCardNum.Text);
      addPaymentRecord.Parameters.AddWithValue("@CARDCVVNO", txtCvv.Text);
      addPaymentRecord.Parameters.AddWithValue("@CARDNAME", txtCardHolder.Text);
      addPaymentRecord.Parameters.AddWithValue("@EXPM", ddlExpMon.Text);
      addPaymentRecord.Parameters.AddWithValue("@EXPY", ddlExpYear.Text);
      addPaymentRecord.Parameters.AddWithValue("@USERID", userid);
      addPaymentRecord.Parameters.AddWithValue("@ORDERID", orderid);

      addPaymentRecord.ExecuteNonQuery();
      conn.Close();

      Response.Redirect("~/MakePayment/Receipt.aspx");
    }
    void Page_Error()
    {
      Response.Write("<p><strong><h3><br/>Sorry. One error is encountered in this page: <br/><br/>");
      Response.Write(Server.GetLastError().Message + "<h3/></strong></p>");
      Server.ClearError();
    }
  }
}
