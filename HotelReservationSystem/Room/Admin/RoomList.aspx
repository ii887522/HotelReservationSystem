<%@ Page Title="Room List | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="RoomList.aspx.cs" Inherits="HotelReservationSystem.Room.Admin.RoomList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2>View Rooms</h2>
    <a href="AddRoom.aspx">Add Room</a>

        <div style="margin:2%;">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RoomId" DataSourceID="RoomDataSource" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
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
                  <asp:TemplateField HeaderText="Image">
                  <ItemTemplate>
                    <img src='<%# "../" + Eval("Image") %>' height="150" width="150" />
                  </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="RoomDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>" SelectCommand="SELECT [PricePerChildren], [Image], [PricePerAdult], [MaxChildren], [MaxAdults], [NoRooms], [RoomLocation], [RoomName], [RoomId] FROM [Room]" DeleteCommand="DELETE FROM [Room] WHERE [RoomId] = @RoomId" InsertCommand="INSERT INTO [Room] ([PricePerChildren], [Image], [PricePerAdult], [MaxChildren], [MaxAdults], [NoRooms], [RoomLocation], [RoomName], [RoomId]) VALUES (@PricePerChildren, @Image, @PricePerAdult, @MaxChildren, @MaxAdults, @NoRooms, @RoomLocation, @RoomName, @RoomId)" UpdateCommand="UPDATE [Room] SET [PricePerChildren] = @PricePerChildren, [Image] = @Image, [PricePerAdult] = @PricePerAdult, [MaxChildren] = @MaxChildren, [MaxAdults] = @MaxAdults, [NoRooms] = @NoRooms, [RoomLocation] = @RoomLocation, [RoomName] = @RoomName WHERE [RoomId] = @RoomId">
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
