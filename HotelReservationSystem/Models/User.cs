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
      string roleId,
      string mobilePhone = "",
      bool isActive = false,
      string profilePicUrl = "",
      long rtcCoin = 0
    )
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();

      var cmd = new SqlCommand(
        "INSERT INTO [User] (MobilePhone, IsActive, ProfilePicUrl, RtcCoin, MembershipId, RoleId) VALUES (@MobilePhone, @IsActive, @ProfilePicUrl, @RtcCoin, @MembershipId, @RoleId)",
        conn
      );

      cmd.Parameters.AddWithValue("@MobilePhone", mobilePhone != "" ? (object)mobilePhone : DBNull.Value);
      cmd.Parameters.AddWithValue("@IsActive", isActive);
      cmd.Parameters.AddWithValue("@ProfilePicUrl", profilePicUrl != "" ? (object)profilePicUrl : DBNull.Value);
      cmd.Parameters.AddWithValue("@RtcCoin", rtcCoin);
      cmd.Parameters.AddWithValue("@MembershipId", membershipId);
      cmd.Parameters.AddWithValue("@RoleId", roleId);
      cmd.ExecuteNonQuery();
      conn.Close();
    }

    public static void Update(string userId, Guid? permaToken = null)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var sql = "UPDATE [User] SET ";
      if (permaToken != null) sql += "PermaToken = @PermaToken ";
      sql += "WHERE Id = @Id";
      var cmd = new SqlCommand(sql, conn);
      if (permaToken != null) cmd.Parameters.AddWithValue("@PermaToken", permaToken);
      cmd.Parameters.AddWithValue("@Id", userId);
      cmd.ExecuteNonQuery();
      conn.Close();
    }

    public static string GetUserId(string userName)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("SELECT UserId FROM aspnet_Users WHERE UserName = @UserName", conn);
      cmd.Parameters.AddWithValue("@UserName", userName);
      var result = ((Guid)cmd.ExecuteScalar()).ToString();
      conn.Close();
      return result;
    }

    public static string GetRole(string userName)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();

      var cmd = new SqlCommand(
        "SELECT aspnet_Roles.RoleName FROM aspnet_Users INNER JOIN aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId WHERE aspnet_Users.UserName = @UserName",
        conn
      );

      cmd.Parameters.AddWithValue("@UserName", userName);
      var result = (string)cmd.ExecuteScalar();
      conn.Close();
      return result;
    }

    public static string GetIdFromPermaToken(Guid permaToken)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("SELECT Id FROM [User] WHERE PermaToken = @PermaToken", conn);
      cmd.Parameters.AddWithValue("@PermaToken", permaToken);
      var result = cmd.ExecuteScalar();
      conn.Close();
      return result != null ? result.ToString() : null;
    }

    public static string GetIdFromUserName(string userName)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("SELECT [User].Id FROM [User] INNER JOIN aspnet_Users ON [User].MembershipId = aspnet_Users.UserId WHERE aspnet_Users.UserName = @UserName", conn);
      cmd.Parameters.AddWithValue("@UserName", userName);
      var result = cmd.ExecuteScalar();
      conn.Close();
      return result != null ? result.ToString() : null;
    }

    public static string GetUserName(string id)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("SELECT aspnet_Users.UserName FROM [User] INNER JOIN aspnet_Users ON [User].MembershipId = aspnet_Users.UserId WHERE [User].Id = @Id", conn);
      cmd.Parameters.AddWithValue("@Id", id);
      var result = (string)cmd.ExecuteScalar();
      conn.Close();
      return result;
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

    public static void DeleteFromAspNet(string userName)
    {
      var conn = new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.LocalSqlServer].ConnectionString);
      conn.Open();
      var cmd = new SqlCommand("DELETE FROM aspnet_Users WHERE UserName = @UserName", conn);
      cmd.Parameters.AddWithValue("@UserName", userName);
      cmd.ExecuteNonQuery();
      conn.Close();
    }
  }

  // Dummy records
  // 
  // Username: ii887522
  // Password: admin@admin1
  // Email address: ii887522@gmail.com
  // Role: User
  //
  // Username: meiyi127
  // Password: meiyi@127
  // Email address: meiyi_127@gmail.com
  // Mobile Phone: +60178715867
  // Role: Admin
  //
  // Username: hatata_murakata
  // Password: muraka#ha1a1a
  // Email address: hatmur@gmail.com
  // Mobile Phone: +60149302328
  // Role: Manager
  //
  // Username: murakata_wakaka
  // Password: m1r2k3!@#
  // Email address: murat.129@gmail.com
  // Role: User
  //
  // Username: chiminyong
  // Password: ii88877@@
  // Email address: yongcm-wm19@student.tarc.edu.my
  // Mobile Phone: +60104221157
  // Role: User
}
