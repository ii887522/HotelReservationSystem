<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomList.aspx.cs" Inherits="HotelReservationSystem.Admin.RoomList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <h2>View Rooms</h2>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RoomId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="RoomId" HeaderText="RoomId" ReadOnly="True" SortExpression="RoomId" />
                    <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
                    <asp:BoundField DataField="RoomLocation" HeaderText="RoomLocation" SortExpression="RoomLocation" />
                    <asp:BoundField DataField="NoRooms" HeaderText="NoRooms" SortExpression="NoRooms" />
                    <asp:BoundField DataField="MaxAdults" HeaderText="MaxAdults" SortExpression="MaxAdults" />
                    <asp:BoundField DataField="MaxChildren" HeaderText="MaxChildren" SortExpression="MaxChildren" />
                    <asp:BoundField DataField="PricePerAdult" HeaderText="PricePerAdult" SortExpression="PricePerAdult" />
                    <asp:BoundField DataField="PricePerChildren" HeaderText="PricePerChildren" SortExpression="PricePerChildren" />
                    <asp:DynamicField DataField="Image" HeaderText="Image" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoomConnectionString %>" DeleteCommand="DELETE FROM [Room] WHERE [RoomId] = @RoomId" InsertCommand="INSERT INTO [Room] ([RoomId], [RoomName], [RoomLocation], [NoRooms], [MaxAdults], [MaxChildren], [PricePerAdult], [PricePerChildren], [Image]) VALUES (@RoomId, @RoomName, @RoomLocation, @NoRooms, @MaxAdults, @MaxChildren, @PricePerAdult, @PricePerChildren, @Image)" SelectCommand="SELECT * FROM [Room]" UpdateCommand="UPDATE [Room] SET [RoomName] = @RoomName, [RoomLocation] = @RoomLocation, [NoRooms] = @NoRooms, [MaxAdults] = @MaxAdults, [MaxChildren] = @MaxChildren, [PricePerAdult] = @PricePerAdult, [PricePerChildren] = @PricePerChildren, [Image] = @Image WHERE [RoomId] = @RoomId">
                <DeleteParameters>
                    <asp:Parameter Name="RoomId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="RoomId" Type="Int32" />
                    <asp:Parameter Name="RoomName" Type="String" />
                    <asp:Parameter Name="RoomLocation" Type="String" />
                    <asp:Parameter Name="NoRooms" Type="Int32" />
                    <asp:Parameter Name="MaxAdults" Type="Int32" />
                    <asp:Parameter Name="MaxChildren" Type="Int32" />
                    <asp:Parameter Name="PricePerAdult" Type="Decimal" />
                    <asp:Parameter Name="PricePerChildren" Type="Decimal" />
                    <asp:Parameter Name="Image" Type="Object" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RoomName" Type="String" />
                    <asp:Parameter Name="RoomLocation" Type="String" />
                    <asp:Parameter Name="NoRooms" Type="Int32" />
                    <asp:Parameter Name="MaxAdults" Type="Int32" />
                    <asp:Parameter Name="MaxChildren" Type="Int32" />
                    <asp:Parameter Name="PricePerAdult" Type="Decimal" />
                    <asp:Parameter Name="PricePerChildren" Type="Decimal" />
                    <asp:Parameter Name="Image" Type="Object" />
                    <asp:Parameter Name="RoomId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
