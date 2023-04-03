<%@ Page
  Title="Booking | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="Booking.aspx.cs"
  Inherits="HotelReservationSystem.Booking.Booking" %>
    
<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-3">
    <div style="max-width: 512px;" class="card m-auto">
        <div class="card-body">
              <h2 style="text-align:center;font-family:cursive">Booking Details</h2>
              <div class="mb-3">
                  <asp:Label CssClass="form-label" runat="server" Text="Name:" />
                  <asp:TextBox CssClass="form-control" runat="server" ID="txtName" />
              </div>
              <div class="mb-3">
                  <asp:Label CssClass="form-label" runat="server" Text="Email:" />
                  <asp:TextBox CssClass="form-control" placeholder="name123@gmail.com" runat="server" ID="txtEmail" />
              </div>
              <div class="mb-3">
                  <asp:Label CssClass="form-label" runat="server" Text="Room Type:" />
                  <asp:DropDownList CssClass="form-select" ID="ddlRoomType" runat="server">
                        <asp:ListItem Value="Pick a room"></asp:ListItem>
                        <asp:ListItem>Single Room</asp:ListItem>
                        <asp:ListItem>Double Room</asp:ListItem>
                        <asp:ListItem>Triple Room</asp:ListItem>
                        <asp:ListItem Value="Deluxe">Deluxe Room</asp:ListItem>
                        <asp:ListItem>Twin Room</asp:ListItem>
                        <asp:ListItem>Double-double Room</asp:ListItem>
                        <asp:ListItem>Hollywood Twin Room</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="mb-3">
                  <asp:Label CssClass="form-label" runat="server" Text="Number of Guests:" />
                  <asp:DropDownList CssClass="form-select" ID="ddlNumOfGuest" runat="server">
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
                  <asp:Label CssClass="form-label" runat="server" Text="Number of Childrens:" />
                  <asp:DropDownList CssClass="form-select" ID="ddlNumOfChildren" runat="server">
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
              <div class="col-md-9">
                  <asp:Label CssClass="form-label" runat="server" Text="Start Date (Time):" />
                  <asp:Calendar ID="calendarStartDate" runat="server" BackColor="#EBEBEB" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="180px" NextPrevFormat="FullMonth" Width="340px" OnSelectionChanged="calendarStartDate_SelectionChanged">
                      <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                      <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                      <OtherMonthDayStyle ForeColor="#999999" />
                      <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                      <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                      <TodayDayStyle BackColor="#CCCCCC" />
                  </asp:Calendar>
                  <asp:TextBox ID="txtBkStartDate" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
              <div class="col-md-9">
                  <asp:Label CssClass="form-label" runat="server" Text="End Date (Time):" />
                  <br />
                  <asp:Calendar ID="calendarEndDate" runat="server" BackColor="#EBEBEB" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="calendarEndDate_SelectionChanged">
                      <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                      <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                      <OtherMonthDayStyle ForeColor="#999999" />
                      <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                      <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                      <TodayDayStyle BackColor="#CCCCCC" />
                  </asp:Calendar>
                <asp:TextBox ID="txtBkEndDate" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
              <div class="mb-3">
                  <asp:Label CssClass="form-label" runat="server" Text="Special Request [Optional]:" />
                  <asp:TextBox CssClass="form-control" placeholder="Additional Information" runat="server" ID="txtSpecialRequest"/>
              </div>
              <div>
                  <asp:Button CssClass="btn btn-dark me-md-3" ID="btnBookRoom" runat="server" Text="Book a Room" OnClick="BookRoom_Click" BackColor="#999999" OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" PostBackUrl="~/Booking/ConfirmBooking.aspx" />
                  <asp:Button ID="btnCancel" runat="server" BackColor="#999999" CssClass="btn btn-dark" OnClick="Cancel_Click" Text="Cancel" />
              </div>
        </div>
    </div>
</div>
</asp:Content>
