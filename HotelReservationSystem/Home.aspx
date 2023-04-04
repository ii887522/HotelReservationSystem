<%@ Page Title="RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Get Started part-->
    <div class="text-center" style="background-color:#82DFC3; padding-top:100px; padding-bottom:100px;">
        <p class="monofont" style="font-weight:bold;">test</p>
        <br />
        <button type="button" class="btn btn-success">Get Started</button>
    </div>
  <%--<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>--%>
    <!-- image with lorem ipsum-->
    <div class="row">
        <div class="col-4"><!--image--></div>
        <div class="col-8" style="background-color:rgb(232, 233, 215); padding-top:50px; padding-bottom:50px;">
            <h2>Lorem ipsum dolar sit amet</h2>
            <p>Lorem ipsum dolar sit amet, hahahahahaha</p>
        </div>
    </div>
    <!-- Our featured rooms -->
    <h2>Our Featured Rooms</h2>
    <div class="card-group">
        <div class="card text-center">
          <asp:Image runat="server" ImageUrl="~/images/deluxeRoom.jpg" Height="250" />
            <div class="card-body">
                <h5 class="card-title">Deluxe Room</h5>
                <p class="card-text">It is a more spacious room with upscale furnishings and amenities.
                  It typically includes a king-size or queen-size bed, a sitting area, and additional amenities such as a mini-fridge, mini safe, and high-end toiletries.</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
        <div class="card text-center">
            <asp:Image runat="server" ImageUrl="~/images/singleRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Single Room</h5>
                <p class="card-text">Ideal for solo travelers, the Single Room is a private space equipped with a single bed and essential amenities such as a writing desk, chair, and closet.</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
        <div class="card text-center">
            <asp:Image runat="server" ImageUrl="~/images/twinRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Twin Room</h5>
                <p class="card-text">Perfect for two friends or colleagues traveling together, the Twin Room comes with two single beds
                  and essential amenities such as a workspace, chair, and closet.</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
        <div class="card text-center">
            <asp:Image runat="server" ImageUrl="~/images/tripleRoom.jpg" Height="250"/>
            <div class="card-body">
                <h5 class="card-title">Triple Room</h5>
                <p class="card-text">A practical and versatile room ideal for small groups or families, featuring either three single beds
                  or a combination of a double bed and a single bed, along with essential amenities such as a work desk, makeup desk, chair, and wardrobe.</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
    </div>
</asp:Content>
