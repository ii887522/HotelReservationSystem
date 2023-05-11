<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="HotelReservationSystem.Room.SearchResults" %>
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
  <!-- Search box, in case user wants to search again -->
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
  
  <!-- Rooms Header -->
  <div class="text-center" style="background-color:#ebf6f9;padding-top:15px; padding-bottom:15px;">
    <h1>Rooms</h1>
  </div>
  <!-- Search results -->
  <div class="row row-cols-1 row-cols-md-3 g-4 mt-4 mx-4">
  <asp:Repeater ID="rptSearchResults" runat="server">
  <ItemTemplate>
    <div class="col">
      <div class="card" style="width: 25rem;">
        <asp:Image CssClass="img-fluid rounded-top" runat="server" ImageUrl='<%# Eval("Image") %>' Height="260px"/>
        <div class="card-body">
          <h5 class="card-title"><%# Eval("RoomType") %></h5>
          <p class="card-text"><%# Eval("RoomDesc") %></p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item" style="font-weight:bold;color:red;">Only RM <%# Eval("Price") %></li>
        </ul>
        <div class="card-body">
          <asp:HyperLink ID="bookNowLink" runat="server" CssClass="btn btn-secondary shadow-sm" NavigateUrl='<%# "~/Booking/Booking.aspx?id=" + Eval("RoomId") %>'>Book Now</asp:HyperLink>
        </div>
      </div>
    </div>
    </ItemTemplate>
    </asp:Repeater>
    <asp:Label ID="NotFound" runat="server"></asp:Label>

    </div>
</asp:Content>
