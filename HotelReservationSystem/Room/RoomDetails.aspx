<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RoomDetails.aspx.cs" Inherits="HotelReservationSystem.Room_Detail.RoomDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            --bs-card-spacer-y: 1rem;
            --bs-card-spacer-x: 1rem;
            --bs-card-title-spacer-y: 0.5rem;
            --bs-card-border-width: 1px;
            --bs-card-border-color: var(--bs-border-color-translucent);
            --bs-card-border-radius: 0.375rem;
            --bs-card-box-shadow: ;
            --bs-card-inner-border-radius: calc(0.375rem - 1px);
            --bs-card-cap-padding-y: 0.5rem;
            --bs-card-cap-padding-x: 1rem;
            --bs-card-cap-bg: rgba(0, 0, 0, 0.03);
            --bs-card-cap-color: ;
            --bs-card-height: ;
            --bs-card-color: ;
            --bs-card-bg: #fff;
            --bs-card-img-overlay-padding: 1rem;
            --bs-card-group-margin: 0.75rem;
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            height: var(--bs-card-height);
            word-wrap: break-word;
            background-color: var(--bs-card-bg);
            background-clip: border-box;
            border-radius: var(--bs-card-border-radius);
            width: 25rem;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="text-center" style="background-color:#ebf6f9;padding-top:15px; padding-bottom:15px;">
    <h1>Rooms</h1>
  </div>
    <div class="row row-cols-1 row-cols-md-3 g-4 mt-4 mx-4">
    <div class="col">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl="~/images/singleRoom.jpg" Height="260px"/>
        <div class="card-body">
          <h5 class="card-title">Single Room</h5>
          <p class="card-text">There is a room available that is suitable for solo travelers.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">One single bed</li>
          <li class="list-group-item">Writing desk</li>
          <li class="list-group-item">Closet</li>
          <li class="list-group-item">Only RM 199.99</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowSingleRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl="~/images/doubleRoom.jpg" Height="260px"/>
        <div class="card-body">
          <h5 class="card-title">Double Room</h5>
          <p class="card-text">The room is a good choice for couples or solo travelers who prefer a bigger bed.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Two double beds/A king size bed</li>
          <li class="list-group-item">Armoire</li>
          <li class="list-group-item">Large TV</li>
<%--          <li class="list-group-item">Dresser</li>--%>
          <li class="list-group-item">Only RM 299.99</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowDoubleRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl="~/images/tripleRoom.jpg" Height="260px"/>
        <div class="card-body">
          <h5 class="card-title">Triple Room</h5>
          <p class="card-text">The room is ideal for small families or groups of three.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Three single beds/One double bed & a single bed</li>
          <li class="list-group-item">Makeup desk</li>
          <li class="list-group-item">Wardrobe</li>
          <li class="list-group-item">Only RM 399.99</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowTripleRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl="~/images/deluxeRoom.jpg" Height="260px"/>
        <div class="card-body">
          <h5 class="card-title">Deluxe Room</h5>
          <p class="card-text">The Deluxe room is a spacious and luxurious accommodation with extra amenities, including a mini-fridge, mini safe, and high-end toiletries.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Two beds</li>
          <li class="list-group-item">Seating area</li>
          <li class="list-group-item">Toilet with bathtub</li>
          <li class="list-group-item">Only RM 388.00</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowDeluxeRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
      <div class="col">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl="~/images/doubleDoubleRoom.jpg" Height="260px"/>
        <div class="card-body">
          <h5 class="card-title">Double-Double Room (Quad Room)</h5>
          <p class="card-text">If you're traveling with family or friends and need more sleeping space, this room type is a great option.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Two double beds</li>
          <li class="list-group-item">A cozy couch</li>
          <li class="list-group-item">Big closet</li>
<%--          <li class="list-group-item">Safe</li>--%>
          <li class="list-group-item">Only RM 499.99</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowDoubleDoubleRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
      <div class="col">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl="~/images/twinRoom.jpg" Height="260px"/>
        <div class="card-body">
          <h5 class="card-title">Twin Room</h5>
          <p class="card-text">This type of room is ideal for those who would like to sleep in separate beds, such as friends or family members.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Two single beds</li>
          <li class="list-group-item">Workspace</li>
          <li class="list-group-item">Wardrobe</li>
          <li class="list-group-item">Only RM 259.99</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowTwinRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
      <div class="col mb-4">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl="~/images/hollywoodTwinRoom.jpg" Height="260px"/>
        <div class="card-body">
          <h5 class="card-title">Hollywood Twin Room</h5>
          <p class="card-text">This is a room type that features two single beds positioned adjacent to each other, with a space in the middle,
            making it a good choice for friends or family members who desire individual sleeping areas while staying in the same room.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Two single beds</li>
          <li class="list-group-item">Air cleaner/humidifier</li>
          <li class="list-group-item">Hot water dispenser</li>
          <li class="list-group-item">Only RM 329.99</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowHollywoodTwinRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
