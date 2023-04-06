<%@ Page Title="RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style type="text/css">
    .photo-first {
      border-top-left-radius: var(--bs-border-radius);
    }

    .photo-last {
      border-top-right-radius: var(--bs-border-radius);
    }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Get Started part-->
    <div class="text-center" style="background-color:#82DFC3; padding-top:50px; padding-bottom:50px;">
        <p class="monofont fw-bold h2">Welcome to RTC Hotel</p>
        <br />

        <asp:LinkButton
          CssClass="btn btn-success shadow-sm"
          runat="server"
          PostBackUrl="~/Room/RoomDetails.aspx"
        >
          Get Started
        </asp:LinkButton>
    </div>
    <!-- image with lorem ipsum-->
    <div class="row gx-0">
        <div class="col-4">
          <!--image-->
          <img src="/images/hotel.jpg" alt="Hotel" width="512" />
        </div>
        <div class="col-8 px-2" style="background-color:rgb(232, 233, 215); padding-top:50px; padding-bottom:50px;">
            <h2>Lorem ipsum dolar sit amet</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
    </div>
    <!-- Our featured rooms -->
    <h2 class="mx-2 mt-4">Our Featured Rooms</h2>
    <div class="card-group mx-2 shadow-sm">
        <div class="card text-center">
          <asp:Image CssClass="photo-first" runat="server" ImageUrl="~/images/deluxeRoom.jpg" Height="250" />
            <div class="card-body">
                <h5 class="card-title">Deluxe Room</h5>
                <p class="card-text">It is a more spacious room with upscale furnishings and amenities.
                  It typically includes a king-size or queen-size bed, a sitting area, and additional amenities such as a mini-fridge, mini safe, and high-end toiletries.</p>

                <asp:HyperLink
                  CssClass="btn btn-primary shadow-sm"
                  runat="server"
                  NavigateUrl="~/Room/RoomDetails.aspx"
                  Text="Read more"
                />
            </div>
        </div>
        <div class="card text-center">
            <asp:Image runat="server" ImageUrl="~/images/singleRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Single Room</h5>
                <p class="card-text">Ideal for solo travelers, the Single Room is a private space equipped with a single bed and essential amenities such as a writing desk, chair, and closet.</p>
                <asp:HyperLink
                  CssClass="btn btn-primary shadow-sm"
                  runat="server"
                  NavigateUrl="~/Room/RoomDetails.aspx"
                  Text="Read more"
                />
            </div>
        </div>
        <div class="card text-center">
            <asp:Image runat="server" ImageUrl="~/images/twinRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Twin Room</h5>
                <p class="card-text">Perfect for two friends or colleagues traveling together, the Twin Room comes with two single beds
                  and essential amenities such as a workspace, chair, and closet.</p>

                <asp:HyperLink
                  CssClass="btn btn-primary shadow-sm"
                  runat="server"
                  NavigateUrl="~/Room/RoomDetails.aspx"
                  Text="Read more"
                />
            </div>
        </div>
        <div class="card text-center">
            <asp:Image CssClass="photo-last" runat="server" ImageUrl="~/images/tripleRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Triple Room</h5>
                <p class="card-text">A practical and versatile room ideal for small groups or families, featuring either three single beds
                  or a combination of a double bed and a single bed, along with essential amenities such as a work desk, makeup desk, chair, and wardrobe.</p>

                <asp:HyperLink
                  CssClass="btn btn-primary shadow-sm"
                  runat="server"
                  NavigateUrl="~/Room/RoomDetails.aspx"
                  Text="Read more"
                />
            </div>
        </div>
    </div>
    <!-- Rooms you may like -->
  <h2 class="mx-2 mt-4">Rooms you may like</h2>
    <div class="card-group mx-2 shadow-sm mb-3">
        <div class="card text-center">
            <asp:Image CssClass="photo-first" runat="server" ImageUrl="~/images/deluxeRoom.jpg" Height="250" />
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                <asp:HyperLink
                  CssClass="btn btn-primary shadow-sm"
                  runat="server"
                  NavigateUrl="~/Room/RoomDetails.aspx"
                  Text="Read more"
                />
            </div>
        </div>
        <div class="card text-center">
            <asp:Image runat="server" ImageUrl="~/images/twinRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                <asp:HyperLink
                  CssClass="btn btn-primary shadow-sm"
                  runat="server"
                  NavigateUrl="~/Room/RoomDetails.aspx"
                  Text="Read more"
                />
            </div>
        </div>
        <div class="card text-center">
            <asp:Image CssClass="photo-last" runat="server" ImageUrl="~/images/tripleRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                <asp:HyperLink
                  CssClass="btn btn-primary shadow-sm"
                  runat="server"
                  NavigateUrl="~/Room/RoomDetails.aspx"
                  Text="Read more"
                />
            </div>
        </div>
        <div class="card text-center">
            <asp:Image runat="server" ImageUrl="~/images/singleRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                <asp:HyperLink
                  CssClass="btn btn-primary shadow-sm"
                  runat="server"
                  NavigateUrl="~/Room/RoomDetails.aspx"
                  Text="Read more"
                />
            </div>
        </div>
    </div>
</asp:Content>
