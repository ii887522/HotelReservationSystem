<%@ Page Title="Add Room | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="HotelReservationSystem.Room.Admin.AddRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2>Add Room</h2>

            <br />
            Room Name:&nbsp;<asp:TextBox ID="RoomNameTxt" runat="server"></asp:TextBox>
            <br />
            <br />
            Room Location:&nbsp;<asp:TextBox ID="RoomLocationTxt" runat="server"></asp:TextBox>
            <br />
            <br />
            Number of Rooms:&nbsp;<input id="NoRoomsTxt" type="number" min="1" max="5" /><br />
            <br />
            Maximum number of Adults:&nbsp;
            <input id="NoAdultsTxt" type="number" min="1" max="10" /><br />
          <br />
          Maximum number of Children:&nbsp;
          <input id="NoChildrenTxt" type="number" min="1" max="10" /><br />
          <br />
          Price per Adult:&nbsp;
            <asp:TextBox ID="PriceAdult" runat="server"></asp:TextBox>
            <br />
            <br />
            Price per Children:&nbsp;
            <asp:TextBox ID="PriceChildren" runat="server"></asp:TextBox>
            <br />
            <br />
            Image:&nbsp;
          <input id="ImageFile" type="file" />
            <br />
            <br />
            <input id="Submit1" type="submit" value="Submit" /><input id="Reset1" type="reset" value="Reset" /></div>
</asp:Content>
