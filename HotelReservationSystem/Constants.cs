namespace HotelReservationSystem
{
  public sealed class Constants
  {
    // Database names
    public const string LocalSqlServer = "LocalSqlServer";

    // Cookie keys
    public const string RememberMe = "remember_me";
    public const string PermaToken = "perma_token";

    // Session keys
    public const string IsLoggedIn = "IsLoggedIn";
    public const string AuthUserId = "AuthUserId";

    // User roles
    public const string RoleUser = "User";
    public const string RoleAdmin = "Admin";
    public const string RoleManager = "Manager";
    public const string RoleReseter = "Reseter";
  }
}
