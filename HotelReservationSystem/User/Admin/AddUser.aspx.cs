using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace HotelReservationSystem.User.Admin
{
  public partial class AddUser : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void usernameValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
      args.IsValid = Models.User.IsUsernameUnique(value: txtUsername.Text.Trim());
    }

    protected void emailValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
      args.IsValid = Models.User.IsEmailUnique(value: txtEmailAddr.Text.Trim());
    }

    protected void phoneValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
      args.IsValid = Models.User.IsPhoneUnique(value: txtPhone.Text.Trim());
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
      if (!Page.IsValid) return;

      var profilePicUrl = "";

      if (fuProfilePic.PostedFile != null && fuProfilePic.PostedFile.ContentLength > 0)
      {
        profilePicUrl = txtUsername.Text.Trim() + "." + fuProfilePic.PostedFile.ContentType.Split('/').Last();

        try
        {
          fuProfilePic.PostedFile.SaveAs(AppDomain.CurrentDomain.BaseDirectory + "upload/user/profile_pic/" + profilePicUrl);
        }
        catch
        {
          ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Failed to upload your profile picture')", true);
          return;
        }
      }

      Roles.AddUserToRole(txtUsername.Text.Trim(), ddlRole.SelectedValue);
      var roleId = Models.User.GetUserId(userName: txtUsername.Text.Trim());

      var membershipId =
        Membership.CreateUser(txtUsername.Text.Trim(), txtPassword.Text, txtEmailAddr.Text.Trim())
          .ProviderUserKey.ToString();

      Models.User.Create(
        membershipId: membershipId,
        roleId: roleId,
        mobilePhone: txtPhone.Text.Trim(),
        isActive: chkActive.Checked,
        profilePicUrl: profilePicUrl,
        rtcCoin: long.Parse(txtRtcCoin.Text != "" ? txtRtcCoin.Text : "0")
      );

      Response.Redirect("UserList.aspx");
    }
  }
}
