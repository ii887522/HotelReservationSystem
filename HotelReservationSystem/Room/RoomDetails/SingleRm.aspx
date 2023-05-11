<%@ Page Title="Single Room Details | RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SingleRm.aspx.cs" Inherits="HotelReservationSystem.Room.RoomDetails.SingleRm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <style>
    .radio-list label {
                display: inline-block;
                margin-right: 10px;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;font-family:'Brush Script MT'";>
    <h1>===Single Room===</h1>
  </div>
  <div class="d-grid gap-2 d-md-flex justify-content-md-end mb-2">
    <asp:Button ID="btnBookNow" class="btn btn-primary me-md-2" runat="server" Text="BookNow" PostBackUrl="~/Booking/Booking.aspx"/>
  </div>
  <div id="roomSlideImages" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#roomSlideImages" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#roomSlideImages" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#roomSlideImages" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner mx-2">
    <div class="carousel-item active">
      <asp:Image runat="server" CssClass="d-block w-100" ImageUrl="~/images/singleRoom.jpg" Height="500px"/>
    </div>
    <div class="carousel-item">
      <asp:Image runat="server" CssClass="d-block w-100" ImageUrl="~/images/deluxeRmToilet.jpeg" Height="500px"/>
    </div>
    <div class="carousel-item">
      <asp:Image runat="server" CssClass="d-block w-100" ImageUrl="~/images/tripleRmToilet.jpg" Height="500px"/>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#roomSlideImages" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#roomSlideImages" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

  <div class="mb-2 mx-2" style="background-color:#f2f2f2;font-family:'Times New Roman';font-size:large;text-align:center">
    <p class="mt-4 mx-4">Our comfortable room gives you the best possible view of the places!!
       Enjoy gazing at there from your guest room window at your leiure.
       Plus our generous and user-friendly bath is also ideal for customers with small children.</p>
  </div>

  <div class="mt-4" style="text-align:center;font-family:'Brush Script MT'";>
    <h1>==Room Information==</h1>
  </div>
  <div class="container mb-4 mx-auto">
   <div class="col-6 col-md-8 mx-auto">
        <div class="card-group rounded-circle">
          <div class="card">
            <div class="card-body">
              <ul>
                <li>Check In/Check Out Info</li>
              </ul>
            </div>
           </div>
        <div class="col-md-8">
          <div class="card">
            <div class="card-body">
              <ul>
                <li>Check In 2:00 p.m.</li>
                <li>Check Out 10:00 a.m.</li>
              </ul>
              <br />
              <ul>
                <p style="font-weight:bold;text-decoration:underline">Late Check Out Notice</p>
                <li style="list-style:inside">30% surcharge on the regular room charge as an extension fee for 10:00am to 3:00pm.</li>
              </ul>  
            </div>
          </div>
       </div>
      </div>
     <div class="card-group rounded-circle">
          <div class="card">
            <div class="card-body">
              <ul>
                <li>Room Facilities / Amenities</li>
              </ul>
            </div>
           </div>
        <div class="col-md-8">
          <div class="card">
            <div class="card-body">
              <ul>
                <li>TV (digital compatible models on all floors)</li>
                <li>Refrigerator</li>
                <li>Air-conditioner (adjustable)</li>
                <li>Toilet with bathtub</li>
                <li>Hot water dispenser</li>
                <li>Air cleaner/humidifier</li>
              </ul> 
            </div>
          </div>
       </div>
      </div>
     <div class="card-group rounded-circle">
          <div class="card">
            <div class="card-body">
              <ul>
                <li>Items available on request free of charge</li>
              </ul>
            </div>
           </div>
        <div class="col-md-8">
          <div class="card">
            <div class="card-body">
              <ul>
                <li>Iron</li>
                <li>Coffee, mineral water</li>
                <li>Soap</li>
                <li>Toothbrush Kit</li>
                <li>Nightwear</li>
              </ul>  
            </div>
          </div>
       </div>
      </div>
    </div>
  </div>

  <div class="mb-2 mx-2" style="background-color:#f2f2f2;font-family:'Times New Roman';font-size:large;text-align:center">
    <p class="mt-4 mx-4" style="font-weight:bold;font-family:Bahnschrift">What Our Customers Say</p>
    <div class="col-6 col-md-5 mx-auto mb-2 bg-light text-dark">
      <div class="card-group rounded-circle">
        <div class="card">
          <div class="card-body">
            <h3 style="text-align:left;font-weight:bold">RTC Hotel Rating</h3>
              <div style="text-align:left">
                <div class="radio-list">
                  <label><input type="radio" name="rating" value="1" />1</label>
                  <label><input type="radio" name="rating" value="2" />2</label>
                  <label><input type="radio" name="rating" value="3" />3</label>
                  <label><input type="radio" name="rating" value="4" />4</label>
                  <label><input type="radio" name="rating" value="5" />5</label>
              </div>
                <%--<input type="hidden" id="ratingValue" name="ratingValue" value="" />--%>
                <%--<div class="d-grid gap-2 d-md-flex justify-content-md-end">--%>
                <%--<asp:Button ID="btnReview" class="me-md-2" runat="server" Text="Write a Review" BackColor="#CCCCCC"/>--%>
                  <h5>Leave a comment:</h5>
                  <asp:TextBox ID="commentBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                  <div class="mt-2 mb-2">
                    <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
