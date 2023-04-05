<%@ Page Title="Contact Us | RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="HotelReservationSystem.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    .img-bg {
        background-image: url("images/slh.png");
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
    }
    p {
      margin: 10px !important;
      text-align: justify;
      padding-left: 40px;
      padding-right: 40px;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="img-bg" style="padding-top:75px; padding-bottom:75px;">
      <p class="monofont fw-bold h2 text-primary text-center">About Us</p>
  </div>
  <p>We are delighted to assist you with your booking and answer any questions you may have. Please find below the contact details for our team.</p>
  <div class="card-group mx-2 shadow-sm">
        <div class="card-body card text-center">
            <h5 class="card-title">Reservations</h5>
            <p class="card-text">Email: reservations@rtchotel.com<br />Phone: 011-2345678</p>
        </div>
      <div class="card-body card text-center">
          <h5 class="card-title">Customer Service</h5>
          <p class="card-text">Email: customerservice@rtchotel.com<br />Phone: 011-8765432</p>
      </div>
      <div class="card-body card text-center">
          <h5 class="card-title">Feedback and Suggestions</h5>
          <p class="card-text">Email: feedback@rtchotel.com</p>
      </div>
  </div>
  <p>Office Hours: Monday to Saturday, 9am - 6pm</p>
  <p>For urgent enquiries outside office hours, please contact us on the emergency number listed on your booking confirmation.</p>
</asp:Content>
