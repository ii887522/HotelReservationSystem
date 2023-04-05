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
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">An item</li>
          <li class="list-group-item">A second item</li>
          <li class="list-group-item">A third item</li>
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
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">An item</li>
          <li class="list-group-item">A second item</li>
          <li class="list-group-item">A third item</li>
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
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">An item</li>
          <li class="list-group-item">A second item</li>
          <li class="list-group-item">A third item</li>
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
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">2 bed</li>
          <li class="list-group-item">Fresh towels</li>
          <li class="list-group-item">Less costly</li>
          <li class="list-group-item">Only RM 599.99</li>
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
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">An item</li>
          <li class="list-group-item">A second item</li>
          <li class="list-group-item">A third item</li>
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
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">An item</li>
          <li class="list-group-item">A second item</li>
          <li class="list-group-item">A third item</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowTwinRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
      <div class="col">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl="~/images/hollywoodTwinRoom.jpg" Height="260px"/>
        <div class="card-body">
          <h5 class="card-title">Hollywood Twin Room</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">An item</li>
          <li class="list-group-item">A second item</li>
          <li class="list-group-item">A third item</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowHollywoodTwinRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
