using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace HotelReservationSystem.Models
{
  public sealed class User
  {
    public static bool IsUsernameUnique(string value)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("SELECT COUNT(*) FROM aspnet_Users WHERE UserName = @UserName", conn);
      cmd.Parameters.AddWithValue("@UserName", value);
      var count = (int)cmd.ExecuteScalar();
      conn.Close();
      return count == 0;
    }

    public static bool IsEmailUnique(string value)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("SELECT COUNT(*) FROM aspnet_Membership WHERE Email = @Email", conn);
      cmd.Parameters.AddWithValue("@Email", value);
      var count = (int)cmd.ExecuteScalar();
      conn.Close();
      return count == 0;
    }

    public static bool IsPhoneUnique(string value)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("SELECT COUNT(*) FROM [User] WHERE MobilePhone = @Phone", conn);
      cmd.Parameters.AddWithValue("@Phone", value);
      var count = (int)cmd.ExecuteScalar();
      conn.Close();
      return count == 0;
    }

    public static void Create(string membershipId, string mobilePhone)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("INSERT INTO [User] (MobilePhone, MembershipId) VALUES (@MobilePhone, @MembershipId)", conn);
      cmd.Parameters.AddWithValue("@MobilePhone", mobilePhone);
      cmd.Parameters.AddWithValue("@MembershipId", membershipId);
      cmd.ExecuteNonQuery();
      conn.Close();
    }
  }

  // Dummy records
  // 
  // Username: ii887522
  // Password: admin@admin1
  // Email address: ii887522@gmail.com
  //
  // Username: meiyi127
  // Password: meiyi@127
  // Email address: meiyi_127@gmail.com
  // Mobile Phone: +60178715867
  //
  // Username: hatata_murakata
  // Password: muraka#ha1a1a
  // Email address: hatmur@gmail.com
  // Mobile Phone: +60149302328
  //
  // Username: murakata_wakaka
  // Password: m1r2k3!@#
  // Email address: murat.129@gmail.com
  //
  // Username: chiminyong
  // Password: ii88877@@
  // Email address: yongcm-wm19@student.tarc.edu.my
  // Mobile Phone: +60104221157
}
