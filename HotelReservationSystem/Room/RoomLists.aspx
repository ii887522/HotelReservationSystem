<%@ Page
  Title="Room Details | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="RoomLists.aspx.cs"
  Inherits="HotelReservationSystem.Room_Detail.RoomDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    @media (min-width: 1230px) {
        .row-cols-md-3 > * {
            flex: 0 0 auto;
            width: 33.3333333333% !important;
        }
    }
    @media (min-width: 768px) {
        .row-cols-md-3 > * {
            flex: 0 0 auto;
            width: 50%;
        }
    }
  </style>
  <script>
    function toggleAdvancedSearch() {
      var x = document.getElementById('advanced-search-fields');
      if (x.style.display == 'none') {
        x.style.display = 'block';
      } else {
        x.style.display = 'none';
      }
    }
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!-- search bar put here -->
  <div class="text-center" style="background: linear-gradient(to bottom, #00ffff 0%, #99ccff 100%); padding-top:50px; padding-bottom:50px;">
    <p class="monofont fw-bold">Search Your Desired Room</p><br />
    <asp:TextBox ID="NoRoomsText" runat="server" placeholder="Number of rooms"></asp:TextBox>
    <asp:TextBox ID="NoAdultsText" runat="server" placeholder="Number of adults"></asp:TextBox>
    <asp:TextBox ID="NoChildrenText" runat="server" placeholder="Number of children"></asp:TextBox>
    <br />
    <br />
    <!-- Advanced search has a button to dropdown -->
    <a href="#" onclick="toggleAdvancedSearch()">Advanced Search</a>
    <div id="advanced-search-fields" style="display:none;">
      Room Type:
      <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem>&lt; Select &gt;</asp:ListItem>
          <asp:ListItem>Single Room</asp:ListItem>
          <asp:ListItem>Double Room</asp:ListItem>
          <asp:ListItem>Triple Room</asp:ListItem>
          <asp:ListItem>Deluxe Room</asp:ListItem>
          <asp:ListItem>Quad Room</asp:ListItem>
          <asp:ListItem>Twin Room</asp:ListItem>
          <asp:ListItem>Hollywood Twin Room</asp:ListItem>
      </asp:DropDownList>
      <br />
      <br />
      Room Price:
      <table style="margin:0 auto;">
          <tr>
              <td>
                <asp:RadioButtonList ID="RoomPriceRange" runat="server">
                    <asp:ListItem>RM 0 - RM 150</asp:ListItem>
                    <asp:ListItem>RM 151 - RM 300</asp:ListItem>
                    <asp:ListItem>RM 301 - RM 450</asp:ListItem>
                    <asp:ListItem>RM 451 - RM 600</asp:ListItem>
                    <asp:ListItem>RM 601+</asp:ListItem>
                </asp:RadioButtonList>
              </td>
          </tr>
      </table>
      <br />
    <!-- End advanced search -->
    </div>
    <!--Search button-->
    <br />
    <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
  </div>
  <!--Search box-->
  <!--Click search button, go to SearchRooms.aspx, then display the results with Repeater? -->


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
          <li class="list-group-item" style="font-weight:bold;color:red;">Only RM 199.99</li>
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
          <li class="list-group-item" style="font-weight:bold;color:red;">Only RM 299.99</li>
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
          <li class="list-group-item" style="font-weight:bold;color:red;">Only RM 399.99</li>
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
          <li class="list-group-item" style="font-weight:bold;color:red;">Only RM 388.00</li>
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
          <li class="list-group-item" style="font-weight:bold;color:red;">Only RM 499.99</li>
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
          <li class="list-group-item" style="font-weight:bold;color:red;">Only RM 259.99</li>
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
          <li class="list-group-item" style="font-weight:bold;color:red;">Only RM 329.99</li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowHollywoodTwinRm" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl="~/Booking/Booking.aspx">Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
