<%@ Page Title="Add Room | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="HotelReservationSystem.Room.Admin.AddRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2>Add Room</h2>
    <a href="RoomList.aspx">Back to Room List</a>
          <br />
          Room Name:&nbsp;<asp:TextBox ID="RoomNameTxt" runat="server"></asp:TextBox>
          <br />
          <br />
          Room Location:&nbsp;<asp:TextBox ID="RoomLocationTxt" runat="server"></asp:TextBox>
          <br />
          <br />
          Number of Rooms:&nbsp;<asp:TextBox ID="NoRoomsTxt" runat="server"></asp:TextBox> <!-- min 1 max 5 -->
          <br /><br />
          Maximum number of Adults:&nbsp;<asp:TextBox ID="NoAdultsTxt" runat="server"></asp:TextBox> <!-- min 1 max 10 -->
          <br /><br />
          Maximum number of Children:&nbsp;<asp:TextBox ID="NoChildrenTxt" runat="server"></asp:TextBox> <!-- min 1 max 10 -->
          <br /><br />
          Price per Adult:&nbsp;<asp:TextBox ID="PriceAdult" runat="server"></asp:TextBox>
          <br /><br />
          Price per Children:&nbsp;
          <asp:TextBox ID="PriceChildren" runat="server"></asp:TextBox>
          <br />
    <br />
    Image: <asp:FileUpload ID="ImageFile" runat="server" />
          <br />
          <br />
          <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" /><input id="Reset1" type="reset" value="Reset" />
</asp:Content>
