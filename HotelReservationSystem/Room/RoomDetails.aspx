<%@ Page Title="Room Details | RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RoomDetails.aspx.cs" Inherits="HotelReservationSystem.Room.RoomDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.checked {
  color: orange;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="text-align:center;font-family:'Brush Script MT'";>
    <h1>===Deluxe Room===</h1>
  </div>
  <div id="roomSlideImages" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#roomSlideImages" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#roomSlideImages" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#roomSlideImages" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner mx-2">
    <div class="carousel-item active">
      <asp:Image runat="server" CssClass="d-block w-100" ImageUrl="~/images/deluxeRoom.jpg" Height="500px"/>
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
    <h1 >==Room Information==</h1>
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
            <p style="text-align:left;font-weight:bold">RTC Hotel Rating</p>
              <div style="text-align:left">
                <span class="bi bi-star-fill"></span>
                <span class="bi bi-star-fill"></span>
                <span class="bi bi-star-fill"></span>
                <span class="bi bi-star-fill"></span>
                <span class="bi bi-star"></span>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <asp:Button ID="btnReview" class="me-md-2" runat="server" Text="Write a Review" BackColor="#CCCCCC"/>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
</asp:Content>