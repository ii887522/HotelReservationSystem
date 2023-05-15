using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace HotelReservationSystem
{
  public class Global : System.Web.HttpApplication
  {

    protected void Application_Start(object sender, EventArgs e)
    {
      // Set up users in the database, should only be called 1 time
      //Roles.CreateRole(Constants.RoleUser);
      //Roles.CreateRole(Constants.RoleAdmin);
      //Roles.CreateRole(Constants.RoleManager);
      //Roles.CreateRole(Constants.RoleReseter);
      //Membership.CreateUser("ii887522", "admin@admin1", "ii887522@gmail.com");
      //Membership.CreateUser("meiyi127", "meiyi@127", "meiyi_127@gmail.com");
      //Membership.CreateUser("hatata_murakata", "muraka#ha1a1a", "hatmur@gmail.com");
      //Membership.CreateUser("murakata_wakaka", "m1r2k3!@#", "murat.129@gmail.com");
      //Membership.CreateUser("chiminyong", "ii88877@@", "yongcm-wm19@student.tarc.edu.my");
      //Roles.AddUserToRole("ii887522", Constants.RoleUser);
      //Roles.AddUserToRole("meiyi127", Constants.RoleAdmin);
      //Roles.AddUserToRole("hatata_murakata", Constants.RoleManager);
      //Roles.AddUserToRole("murakata_wakaka", Constants.RoleUser);
      //Roles.AddUserToRole("chiminyong", Constants.RoleUser);

      // hatmur@gmail.com
      // Models.User.Create("10b9d5a5-c8b0-40ba-903c-fed82a3114e3", "f19bb1ed-84bc-45d0-b697-e6b765f8f8e3", mobilePhone: "+60149302328", isActive: true, profilePicUrl: "hatata_murakata.png", rtcCoin: 0);

      // ii887522@gmail.com
      // Models.User.Create("84b9842c-c49f-4796-be2b-c6f380794222", "ca45589c-2d21-4c19-8514-ab94a3fbae03", isActive: true, profilePicUrl: "ii887522.jpeg", rtcCoin: 100);

      // meiyi_127@gmail.com
      // Models.User.Create("4cffb0f7-2768-4d43-a87f-3d3956ff3ae8", "cde2bab3-9866-4574-ac89-99676cfbd975", mobilePhone: "+60178715867", isActive: true, rtcCoin: 99999);

      // murat.129@gmail.com
      // Models.User.Create("9904a7c7-8b4d-44d4-be6c-3b5c25f1c804", "ce1f61e3-9485-4a9a-972c-f68f576ab9c6", isActive: true, profilePicUrl: "murakata_wakaka.png", rtcCoin: 0);

      // yongcm-wm19@student.tarc.edu.my
      // Models.User.Create("460ff3a0-cb51-4503-98f3-59da81d70ca2", "f0305366-3855-4fe1-91d0-7b0737e050e0", mobilePhone: "+60104221157", isActive: true, profilePicUrl: "chiminyong.jpeg", rtcCoin: 1);
    }

    protected void Session_Start(object sender, EventArgs e)
    {
      var permaTokenCookie = Request.Cookies[Constants.PermaToken];
      if (permaTokenCookie == null) return;
      Guid permaToken;
      if (!Guid.TryParse(permaTokenCookie.Value, out permaToken)) return;
      var userId = Models.User.GetIdFromPermaToken(permaToken);
      if (userId == null) return;
      Session[Constants.AuthUserId] = userId;
      FormsAuthentication.RedirectFromLoginPage(Models.User.GetUserName(id: userId), false);
    }

    protected void Application_BeginRequest(object sender, EventArgs e)
    {

    }

    protected void Application_AuthenticateRequest(object sender, EventArgs e)
    {

    }

    protected void Application_Error(object sender, EventArgs e)
    {
      // Code that runs when an unhandled error occurs
      Application.Lock();
      Application["ErrorMsg"] +=  Server.GetLastError().Message;
      Application.UnLock();
    }

    protected void Session_End(object sender, EventArgs e)
    {

    }

    protected void Application_End(object sender, EventArgs e)
    {

    }
  }
}
