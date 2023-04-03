<%@ Page Title="Confirm Booking | RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="HotelReservationSystem.Booking.ConfirmBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="p-3">
    <div style="max-width: 512px;" class="card m-auto">
        <div class="card-body">
              <h2 style="text-align:center;font-family:cursive">RTC HOTEL Booking Confirmation</h2>
          <br />
          <p>You have confirmed your booking with the following details:<br /></p>
              <asp:Label ID="lblDetail" runat="server"></asp:Label>
          <br />
          <br />
          <p>Please 
              <asp:HyperLink ID="hplToPymt" runat="server" Font-Italic="True" Font-Underline="True" NavigateUrl="#">click me</asp:HyperLink>
              &nbsp;to proceed make the payment of your reservation.</p>
        </div>
      </div>
    </div>
</asp:Content>
