<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="HotelReservationSystem.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Not Found</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="~/Content/bootstrap.css" />
    <link rel="icon" type="image/png" href="/images/main-logo.png" />
  <style>
    .error-page {
      background-color: #f5f5f5;
      text-align: center;
      padding: 50px;
      margin-top: 50px;
    }

    h1 {
      font-size: 48px;
      color: #555;
      margin-bottom: 20px;
    }

    p {
      font-size: 24px;
      color: #888;
      margin-bottom: 30px;
    }

    a {
      display: inline-block;
      background-color: #007bff;
      color: #fff;
      font-size: 24px;
      padding: 10px 20px;
      border-radius: 5px;
      text-decoration: none;
      transition: background-color 0.2s;
    }

    a:hover {
      background-color: #0062cc;
      color: #fff !important;
    }
  </style>
</head>
<body class="antialiased">
  <div class="error-page">
    <h1>We're Sorry!</h1>
    <p>There is an unknown error occurred.</p>
    <asp:HyperLink ID="ErrorBack" runat="server" NavigateUrl="Home.aspx">Go back to homepage</asp:HyperLink>
  </div>
</body>
</html>
