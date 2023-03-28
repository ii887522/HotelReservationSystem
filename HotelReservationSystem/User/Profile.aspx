<%@ Page
  Title="Profile | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="Profile.aspx.cs"
  Inherits="HotelReservationSystem.User.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="card rounded-0 border-0" style="background: linear-gradient(#7FB2FF, #BF98D8)">
    <div class="card-body">
      <div class="float-start pe-3">
        <img src="/images/cute.jpg" alt="Profile Picture" width="96" />
      </div>

      <asp:LinkButton class="float-end" runat="server" PostBackUrl="~/User/EditProfile.aspx">
        <i class="bi bi-pencil-square text-danger"></i>
      </asp:LinkButton>

      <b class="me-2">Chimin_012</b>

      <div class="badge rounded-pill bg-secondary">
        <img class="align-text-top" src="/images/stone.png" alt="Stone" width="16" />
        <span>STONE</span>
      </div>

      <div class="text-secondary">ID: 123456</div>
      <div style="color: cornsilk">RTC Coins: 123</div>
    </div>
  </div>

  <h2 class="m-3">Browsing History</h2>

  <div id="carouselExample" class="carousel slide">
    <div class="carousel-inner">
      <div class="carousel-item active px-5">
        <div class="card-group px-3 pb-3">
          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>

          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>

          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>
        </div>
      </div>

      <div class="carousel-item px-5">
        <div class="card-group px-3 pb-3">
          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>

          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>

          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>
        </div>
      </div>

      <div class="carousel-item px-5">
        <div class="card-group px-3 pb-3">
          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>

          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>

          <div class="card text-center">
            <img src="..." class="card-img-top" alt="..." />

            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
              <a href="#" class="btn btn-primary">Read more</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <button
      class="carousel-control-prev"
      type="button"
      data-bs-target="#carouselExample"
      data-bs-slide="prev"
      style="width: 64px"
    >
      <i
        class="carousel-control-prev-icon"
        aria-hidden="true"
        style="filter: invert(100%) sepia(2%) saturate(2%) hue-rotate(40deg) brightness(106%) contrast(101%)"
      >
      </i>

      <span class="visually-hidden">Previous</span>
    </button>

    <button
      class="carousel-control-next"
      type="button"
      data-bs-target="#carouselExample"
      data-bs-slide="next"
      style="width: 64px"
    >
      <i
        class="carousel-control-next-icon"
        aria-hidden="true"
        style="filter: invert(100%) sepia(2%) saturate(2%) hue-rotate(40deg) brightness(106%) contrast(101%)"
      >
      </i>

      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <h2 class="m-3">Purchase Order</h2>

  <div class="m-3">
    <table class="table">
      <tbody>
        <tr>
          <td scope="row" style="width: 0">
            <img src="/images/cute.jpg" alt="Profile Picture" width="64" />
          </td>

          <td>
            <b>Room Name #1</b>
            <br />
            <span class="text-secondary">#1234567890ABCDEF</span>
          </td>

          <td style="width: 0">
            <asp:Button class="btn btn-primary" runat="server" Text="Show More" />
          </td>
        </tr>

        <tr>
          <td scope="row">
            <img src="/images/cute.jpg" alt="Profile Picture" width="64" />
          </td>

          <td>
            <b>Room Name #2</b>
            <br />
            <span class="text-secondary">#1234567890ABCDEF</span>
          </td>

          <td>
            <asp:Button class="btn btn-primary" runat="server" Text="Show More" />
          </td>
        </tr>

        <tr>
          <td scope="row">
            <img src="/images/cute.jpg" alt="Profile Picture" width="64" />
          </td>

          <td>
            <b>Room Name #3</b>
            <br />
            <span class="text-secondary">#1234567890ABCDEF</span>
          </td>

          <td>
            <asp:Button class="btn btn-primary" runat="server" Text="Show More" />
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</asp:Content>
