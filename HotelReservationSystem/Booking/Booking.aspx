<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="HotelReservationSystem.Booking.Booking" %>
<%
    /*
    *Booking module*
    - Select date, room, no. of guests etc.

    Admin side
    - CRUD for room type 
    - Prepare booking monthly report 
    */
%>
    
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking | RTC Hotel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body class="p-3">
    <div style="max-width: 512px;" class="card m-auto">
        <div class="card-body">
             <form runat="server">
                 <h2 style="text-align:center">Booking</h2>
                 <div class="mb-3">
                     <asp:Label class="form-label" runat="server" Text="Name:" />
                     <asp:TextBox class="form-control" runat="server" />
                 </div>
                 <div class="mb-3">
                     <asp:Label class="form-label" runat="server" Text="Email:" />
                     <asp:TextBox class="form-control" placeholder="name123@gmail.com" runat="server" />
                 </div>
                 <div class="mb-3">
                     <asp:Label class="form-label" runat="server" Text="Room Type:" />
                     <asp:DropDownList class="form-select" ID="ddlRoomType" runat="server">
                            <asp:ListItem Value="Pick a room"></asp:ListItem>
                            <asp:ListItem Value="Deluxe"></asp:ListItem>
                     </asp:DropDownList>
                 </div>
                 <div class="mb-3">
                     <asp:Label class="form-label" runat="server" Text="Number of Guests:" />
                     <asp:DropDownList class="form-select" ID="ddlNumOfGuest" runat="server">
                            <asp:ListItem Value="Number of Guest"></asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                        </asp:DropDownList>
                 </div>
                 <div class="mb-3">
                     <asp:Label class="form-label" runat="server" Text="Number of Childrens:" />
                     <asp:DropDownList class="form-select" ID="ddlNumOfChildren" runat="server">
                            <asp:ListItem Value="Number of Children"></asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                        </asp:DropDownList>
                 </div>
                 <div class="mb-3">
                     <asp:Label class="form-label" runat="server" Text="Arrival Date (Time):" />
                     <asp:Calendar ID="calendarArrival" runat="server"></asp:Calendar>
                 </div>
                 <div class="mb-3">
                     <asp:Label class="form-label" runat="server" Text="Departure Date (Time):" />
                     <asp:Calendar ID="calendarDeparture" runat="server"></asp:Calendar>
                 </div>
                 <div class="mb-3">
                     <asp:Label class="form-label" runat="server" Text="Special Request [Optional]:" />
                     <asp:TextBox class="form-control" placeholder="Additional Information" runat="server"/>
                 </div>
                 <div>
                     <asp:Button ID="Book" runat="server" Text="Book" />
                 </div>
            </form>
        </div>
    </div>

    <script src="<%= ResolveUrl("~/Scripts/bootstrap.min.js") %>"></script>
</body>
</html>