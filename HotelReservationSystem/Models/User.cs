using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace HotelReservationSystem.Models
{
  public sealed class User
  {
    public string userName;
    public string email;
    public string mobilePhone;
    public bool isActive;
    public long rtcCoin;
    public string profilePicUrl;

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

    public static void Create(
      string membershipId,
      string mobilePhone = "",
      bool isActive = false,
      string profilePicUrl = "",
      long rtcCoin = 0
    )
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();

      var cmd = new SqlCommand(
        "INSERT INTO [User] (MobilePhone, MembershipId, IsActive, ProfilePicUrl, RtcCoin) VALUES (@MobilePhone, @MembershipId, @IsActive, @ProfilePicUrl, @RtcCoin)",
        conn
      );

      cmd.Parameters.AddWithValue("@MobilePhone", mobilePhone != "" ? (object)mobilePhone : DBNull.Value);
      cmd.Parameters.AddWithValue("@MembershipId", membershipId);
      cmd.Parameters.AddWithValue("@IsActive", isActive);
      cmd.Parameters.AddWithValue("@ProfilePicUrl", profilePicUrl != "" ? (object)profilePicUrl : DBNull.Value);
      cmd.Parameters.AddWithValue("@RtcCoin", rtcCoin);
      cmd.ExecuteNonQuery();
      conn.Close();
    }

    public static User Read(string id)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();

      var cmd = new SqlCommand(
        "SELECT aspnet_Users.UserName, aspnet_Membership.Email, [User].MobilePhone, [User].IsActive, [User].RtcCoin, [User].ProfilePicUrl FROM [User] INNER JOIN aspnet_Users ON [User].MembershipId = aspnet_Users.UserId INNER JOIN aspnet_Membership ON [User].MembershipId = aspnet_Membership.UserId WHERE [User].Id = @UserId",
        conn
      );

      cmd.Parameters.AddWithValue("@UserId", id);
      var reader = cmd.ExecuteReader();
      reader.Read();

      var userName = reader.GetString(reader.GetOrdinal("UserName"));
      var email = reader.GetString(reader.GetOrdinal("Email"));
      var mobilePhone = reader.IsDBNull(reader.GetOrdinal("MobilePhone")) ? "" : reader.GetString(reader.GetOrdinal("MobilePhone"));
      var isActive = reader.GetBoolean(reader.GetOrdinal("IsActive"));
      var rtcCoin = reader.GetInt64(reader.GetOrdinal("RtcCoin"));
      var profilePicUrl = reader.IsDBNull(reader.GetOrdinal("ProfilePicUrl")) ? "" : reader.GetString(reader.GetOrdinal("ProfilePicUrl"));

      conn.Close();

      return new User()
      {
        userName = userName,
        email = email,
        mobilePhone = mobilePhone,
        isActive = isActive,
        rtcCoin = rtcCoin,
        profilePicUrl = profilePicUrl
      };
    }

    public static int Delete(string id)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();

      // Delete stored profile picture
      var cmd = new SqlCommand("SELECT [ProfilePicUrl] FROM [User] WHERE Id = @Id", conn);
      cmd.Parameters.AddWithValue("@Id", id);
      var profilePicUrl = cmd.ExecuteScalar();

      if (profilePicUrl != DBNull.Value)
      {
        File.Delete(AppDomain.CurrentDomain.BaseDirectory + "upload/user/profile_pic/" + profilePicUrl);
      }

      // Delete user record
      cmd = new SqlCommand("DELETE FROM [User] WHERE Id = @Id", conn);
      cmd.Parameters.AddWithValue("@Id", id);
      var result = cmd.ExecuteNonQuery();

      conn.Close();
      return result;
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
