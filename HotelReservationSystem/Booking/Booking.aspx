<%@ Page
  Title="Booking | RTC Hotel"
  Language="C#"
  MasterPageFile="~/Form.master"
  AutoEventWireup="true"
  CodeBehind="Booking.aspx.cs"
  Inherits="HotelReservationSystem.Booking.Booking" %>
    
<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="main" runat="server">
    <div class="p-3">
    <div style="max-width: 512px;" class="card m-auto">
        <div class="card-body">
              <h2 style="text-align:center;font-family:cursive">Booking Details</h2>
              <div class="mb-3">
                  <asp:Label CssClass="form-label" runat="server" Text="Name:" />
                  <asp:TextBox ID="txtName" CssClass="form-control" runat="server" />
              </div>
              <div class="mb-3">
                  <asp:Label CssClass="form-label" runat="server" Text="Email:" />
                  <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="name123@gmail.com" runat="server"/>
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
              <div class="col-md-9 mb-3">
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
                <%--quantity--%>
                <label for="quantityNum">Quantity of Room:</label>
                <asp:ImageButton ID="IncreaseButton" runat="server" Height="26px" ImageUrl="~/icons/add.png" OnClick="IncreaseButton_Click" Width="26px" />
                <asp:TextBox ID="quantityNum" runat="server" Text="1" type="number" min="1" max="10" Width="120px" ReadOnly="true" Height="26px" Wrap="False"/>
                <asp:ImageButton ID="DecreaseButton" runat="server" Height="26px" ImageUrl="~/icons/minus.png" OnClick="DecreaseButton_Click" Width="26px" />
              </div>
              <div class="mb-3">
                  <asp:Label CssClass="form-label" runat="server" Text="Special Request [Optional]:" />
                  <asp:TextBox CssClass="form-control" placeholder="Additional Information" runat="server" ID="txtSpecialRequest"/>
              </div>
              <div>
                <asp:Button CssClass="btn btn-dark me-md-3" ID="btnBookaRoom" runat="server" Text="Book a Room" OnClick="BookRoom_Click" BackColor="#999999" PostBackUrl="~/MakePayment/Payment.aspx" />
                  <asp:Button ID="btnCancel" runat="server" BackColor="#999999" CssClass="btn btn-dark" OnClick="Cancel_Click" Text="Cancel" PostBackUrl="~/Room/RoomLists.aspx" />
              </div>
        </div>
    </div>
</div>
</asp:Content>
