<%@ Page Title="Room List | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="RoomList.aspx.cs" Inherits="HotelReservationSystem.Room.Admin.RoomList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2>View Rooms</h2>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RoomId" DataSourceID="RoomDataSource">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="PricePerChildren" HeaderText="PricePerChildren" SortExpression="PricePerChildren" />
                    <asp:BoundField DataField="PricePerAdult" HeaderText="PricePerAdult" SortExpression="PricePerAdult" />
                    <asp:BoundField DataField="MaxChildren" HeaderText="MaxChildren" SortExpression="MaxChildren" />
                    <asp:BoundField DataField="MaxAdults" HeaderText="MaxAdults" SortExpression="MaxAdults" />
                    <asp:BoundField DataField="NoRooms" HeaderText="NoRooms" SortExpression="NoRooms" />
                    <asp:BoundField DataField="RoomLocation" HeaderText="RoomLocation" SortExpression="RoomLocation" />
                    <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
                    <asp:BoundField DataField="RoomId" HeaderText="RoomId" SortExpression="RoomId" ReadOnly="True" />
                    <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="RoomDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RoomConnectionString %>" SelectCommand="SELECT [PricePerChildren], [Image], [PricePerAdult], [MaxChildren], [MaxAdults], [NoRooms], [RoomLocation], [RoomName], [RoomId] FROM [Room]" DeleteCommand="DELETE FROM [Room] WHERE [RoomId] = @RoomId" InsertCommand="INSERT INTO [Room] ([PricePerChildren], [Image], [PricePerAdult], [MaxChildren], [MaxAdults], [NoRooms], [RoomLocation], [RoomName], [RoomId]) VALUES (@PricePerChildren, @Image, @PricePerAdult, @MaxChildren, @MaxAdults, @NoRooms, @RoomLocation, @RoomName, @RoomId)" UpdateCommand="UPDATE [Room] SET [PricePerChildren] = @PricePerChildren, [Image] = @Image, [PricePerAdult] = @PricePerAdult, [MaxChildren] = @MaxChildren, [MaxAdults] = @MaxAdults, [NoRooms] = @NoRooms, [RoomLocation] = @RoomLocation, [RoomName] = @RoomName WHERE [RoomId] = @RoomId">
                <DeleteParameters>
                    <asp:Parameter Name="RoomId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PricePerChildren" Type="Decimal" />
                    <asp:Parameter Name="Image" Type="Object" />
                    <asp:Parameter Name="PricePerAdult" Type="Decimal" />
                    <asp:Parameter Name="MaxChildren" Type="Int32" />
                    <asp:Parameter Name="MaxAdults" Type="Int32" />
                    <asp:Parameter Name="NoRooms" Type="Int32" />
                    <asp:Parameter Name="RoomLocation" Type="String" />
                    <asp:Parameter Name="RoomName" Type="String" />
                    <asp:Parameter Name="RoomId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PricePerChildren" Type="Decimal" />
                    <asp:Parameter Name="Image" Type="Object" />
                    <asp:Parameter Name="PricePerAdult" Type="Decimal" />
                    <asp:Parameter Name="MaxChildren" Type="Int32" />
                    <asp:Parameter Name="MaxAdults" Type="Int32" />
                    <asp:Parameter Name="NoRooms" Type="Int32" />
                    <asp:Parameter Name="RoomLocation" Type="String" />
                    <asp:Parameter Name="RoomName" Type="String" />
                    <asp:Parameter Name="RoomId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>
