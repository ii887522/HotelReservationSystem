<%@ Page
  Title="Edit Profile | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="EditProfile.aspx.cs"
  Inherits="HotelReservationSystem.User.EditProfile" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>
    <h2 class="mt-3 mx-3">
      <asp:LinkButton class="me-2 text-decoration-none" runat="server" PostBackUrl="~/User/Profile.aspx">
        <i class="bi bi-chevron-left"></i>
      </asp:LinkButton>

      <span>Edit User Profile</span>
    </h2>

    <div class="card m-3 shadow-sm">
      <div class="card-body">
        <h4>Account Status</h4>

        <p class="mb-5">
          <i class="bi bi-exclamation-circle text-danger"></i>
          Your account is not activated. Please
     
          <asp:HyperLink runat="server" NavigateUrl="~/User/ActivateAccount.aspx">activate your account</asp:HyperLink>
          now to gain full access to our online hotel booking services.
   
        </p>

        <h4>Edit Profile Picture</h4>

        <asp:Image CssClass="mb-3" runat="server" ImageUrl="~/images/cute.jpg" Width="256" />
        <asp:FileUpload CssClass="form-control mb-5 w-auto shadow-sm" runat="server" />

        <h4>Edit User Details</h4>

        <div class="my-4">
          <asp:Label CssClass="form-label me-3" runat="server" Text="Username" />
          <asp:TextBox CssClass="form-control d-inline me-3 align-middle" runat="server" Width="256" Text="Chimin_012" />
          <asp:Button CssClass="btn btn-primary shadow-sm" runat="server" Text="Save" />
        </div>

        <asp:Button CssClass="btn btn-primary d-block mb-3 shadow-sm" runat="server" Text="Change Password" PostBackUrl="~/User/EditPassword.aspx" />
        <asp:Button CssClass="btn btn-primary d-block mb-3 shadow-sm" runat="server" Text="Change Email Address" PostBackUrl="~/User/EditEmailAddr.aspx" />
        <asp:Button CssClass="btn btn-primary d-block mb-5 shadow-sm" runat="server" Text="Change Mobile Phone" PostBackUrl="~/User/EditMobilePhone.aspx" />

        <h4>Clear Browsing History</h4>
        <p>It will delete all your records of previously viewed rooms in your user profile. THIS ACTION CANNOT BE UNDONE.</p>
        <asp:Button CssClass="btn btn-danger mb-4 shadow-sm" runat="server" Text="Clear" />
      </div>
    </div>
  </div>
</asp:Content>
