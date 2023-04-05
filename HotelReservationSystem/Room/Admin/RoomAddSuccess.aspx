<%@ Page Title="Add Room | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="RoomAddSuccess.aspx.cs" Inherits="HotelReservationSystem.Room.Admin.RoomAddSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2>Successfully added</h2>
  <p>You have successfully added the following room to the database:</p>
  <div>
    <asp:Label ID="Content" runat="server"></asp:Label>
  </div>
</asp:Content>
