<%@ Page Title="About Us | RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="HotelReservationSystem.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    .img-bg {
        background-image: url("images/ghkl.png");
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
  <p>Welcome to RTC Hotel's official website.</p>
  <p>We are proud to offer you an innovative and highly efficient platform for booking hotels across Malayia. Our mission is to provide our users with an easy, convenient and secure booking experience that meets their needs and exceeds their expectations.</p>
  <p>Our website is designed to simplify the hotel reservation process, granting you with the ability to browse and book thousands of hotel rooms online. Our system is user-friendly, making sure that even if you don't have much experience in using an online reservation system, you will find it easy to navigate on our website.</p>
  <p>At our website, we understand that the most critical aspect of any online booking service is the security of user's data. Therefore, we have made sure that our website has a robust security architecture that guarantees the protection and confidentiality of your data at all times.</p>
  <p>We value your feedback and understand that to provide you with the best possible experience, we need to continually improve our service. Therefore, we are committed to ensuring that we provide you with top-notch service, whenever you need it.</p>
  <p>Our team of professionals is available 24/7 to assist you with all your questions and concerns. Whether you have a question about a particular hotel or need help with the booking process, we are always ready to help you.</p>
  <p>We believe in honesty in all our dealings with our customers and we strive to create long-term relationships with our customers. We are confident that our website is the right choice for you, so why not give us a try? Book your hotel today with RTC Hotel.</p>
</asp:Content>
