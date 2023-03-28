<%@ Page
  Title="Edit Profile | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="EditProfile.aspx.cs"
  Inherits="HotelReservationSystem.User.EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2 class="m-3">
    <asp:LinkButton class="me-2 text-decoration-none" runat="server" PostBackUrl="~/User/Profile.aspx">
      <i class="bi bi-chevron-left"></i>
    </asp:LinkButton>

    <span>Edit User Profile</span>
  </h2>
</asp:Content>
