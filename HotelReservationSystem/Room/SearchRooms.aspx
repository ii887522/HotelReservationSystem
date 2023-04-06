<%@ Page Title="Search Rooms | RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchRooms.aspx.cs" Inherits="Assignment.SearchRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="text-center" style="background: linear-gradient(to bottom, #00ffff 0%, #99ccff 100%); padding-top:50px; padding-bottom:50px;">
    <p class="monofont fw-bold">Search Your Desired Room</p><br />
    <asp:TextBox ID="LocationText" runat="server" placeholder="Location"></asp:TextBox>
    <asp:TextBox ID="NoRoomsText" runat="server" placeholder="Number of rooms"></asp:TextBox>
    <asp:TextBox ID="NoAdultsText" runat="server" placeholder="Number of adults"></asp:TextBox>
    <asp:TextBox ID="NoChildrenText" runat="server" placeholder="Number of children"></asp:TextBox>
    <br />
    <div class="row justify-content-center">
      <div class="col-auto">
        <table class="table table-responsive">
          <tr>
            <td>Check-in date: <asp:Calendar ID="CheckInDate" runat="server"></asp:Calendar></td>
            <td>Check-out date: <asp:Calendar ID="CheckOutDate" runat="server"></asp:Calendar></td>
          </tr>
        </table>
      </div>
    </div>
    <br />
    <br />
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
  </div>
  <!--Search box-->
    <br />
    <br />
    <div style="padding-left:50px; padding-right:50px;">
        <asp:GridView ID="SearchResult" runat="server" AutoGenerateColumns="False" DataKeyNames="RoomId" OnSelectedIndexChanged="SearchResult_SelectedIndexChanged" CssClass="justify-content-center" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowSelectButton="true" />
                <asp:BoundField DataField="RoomId" HeaderText="RoomId" SortExpression="RoomId" />
                <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
                <asp:BoundField DataField="RoomLocation" HeaderText="RoomLocation" SortExpression="RoomLocation" />
                <asp:BoundField DataField="NoRooms" HeaderText="NoRooms" SortExpression="NoRooms" />
                <asp:BoundField DataField="MaxAdults" HeaderText="MaxAdults" SortExpression="MaxAdults" />
                <asp:BoundField DataField="MaxChildren" HeaderText="MaxChildren" SortExpression="MaxChildren" />
                <asp:BoundField DataField="PricePerAdult" HeaderText="PricePerAdult" SortExpression="PricePerAdult" />
                <asp:BoundField DataField="PricePerChildren" HeaderText="PricePerChildren" SortExpression="PricePerChildren" />
                
                <asp:TemplateField HeaderText="Image">
                  <ItemTemplate>
                    <img src='<%# Eval("Image") %>' height="150" width="150" />
                  </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <br />
        <br />
        <!-- show details of selected record -->
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="RoomId" Height="50px" Width="360px" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White"></EditRowStyle>
            <Fields>
                <asp:BoundField DataField="RoomName" HeaderText="Room Name" InsertVisible="False" ReadOnly="True" SortExpression="RoomName" />
                <asp:BoundField DataField="RoomLocation" HeaderText="Room Location" InsertVisible="False" ReadOnly="True" SortExpression="RoomLocation" />
                <asp:BoundField DataField="NoRooms" HeaderText="Number of rooms" InsertVisible="False" ReadOnly="True" SortExpression="NoRooms" />
                <asp:BoundField DataField="MaxAdults" HeaderText="Max. number of adults" InsertVisible="False" ReadOnly="True" SortExpression="MaxAdults" />
                <asp:BoundField DataField="MaxChildren" HeaderText="Max. number of children" InsertVisible="False" ReadOnly="True" SortExpression="MaxChildren" />
                <asp:BoundField DataField="PricePerAdult" HeaderText="Price per Adult" InsertVisible="false" ReadOnly="true" SortExpression="PricePerAdult" />
                <asp:BoundField DataField="PricePerChildren" HeaderText="Price per Children" InsertVisible="false" ReadOnly="true" SortExpression="PricePerChildren" />
            </Fields>
            <FooterStyle BackColor="#CCCC99"></FooterStyle>

            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>

            <RowStyle BackColor="#F7F7DE"></RowStyle>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HotelReservationSystem.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT R.RoomId, R.RoomName, R.RoomLocation, R.NoRooms, R.MaxAdults, R.MaxChildren, R.PricePerAdult, R.PricePerChildren FROM Room R INNER JOIN Room ON R.RoomId = @RoomId">
            <SelectParameters>
                <asp:ControlParameter ControlID="SearchResult" Name="RoomID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <!-- show Book Now button when a record is selected -->
        <asp:Button ID="btnBookRoom" runat="server" Visible="false" Text="Book Now" OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" PostBackUrl="#" />
    </div>
  <br />
</asp:Content>
