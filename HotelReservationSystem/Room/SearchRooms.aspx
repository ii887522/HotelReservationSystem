<%@ Page Title="Search Rooms | RTC Hotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchRooms.aspx.cs" Inherits="Assignment.SearchRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="text-center" style="background: linear-gradient(to bottom, #00ffff 0%, #99ccff 100%); padding-top:50px; padding-bottom:50px;">
    <p class="monofont">Search Your Desired Room</p><br />
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
    <div>
        <asp:GridView ID="SearchResult" runat="server" AutoGenerateColumns="False" DataKeyNames="RoomId" OnSelectedIndexChanged="SearchResult_SelectedIndexChanged">
            <Columns>
              <asp:BoundField DataField="RoomId" HeaderText="RoomId" SortExpression="RoomId" />
                <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
                <asp:BoundField DataField="RoomLocation" HeaderText="RoomLocation" SortExpression="RoomLocation" />
                <asp:BoundField DataField="NoRooms" HeaderText="NoRooms" SortExpression="NoRooms" />
                <asp:BoundField DataField="MaxAdults" HeaderText="MaxAdults" SortExpression="MaxAdults" />
                <asp:BoundField DataField="MaxChildren" HeaderText="MaxChildren" SortExpression="MaxChildren" />
                
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblPrice" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
