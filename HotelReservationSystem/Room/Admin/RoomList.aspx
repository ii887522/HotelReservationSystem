<%@ Page Title="Room List | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="RoomList.aspx.cs" Inherits="HotelReservationSystem.Room.Admin.RoomList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    .grid-width {
      width:100%;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2>View Rooms</h2>
    <a href="AddRoom.aspx">Add Room</a>

        <div style="margin:2%;">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RoomId" DataSourceID="RoomDataSource" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="grid-width">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="RoomId" HeaderText="Room ID" SortExpression="RoomId" ReadOnly="True" />
                    <asp:BoundField DataField="RoomType" HeaderText="Room Type" SortExpression="RoomType" />
                    <asp:BoundField DataField="RoomDesc" HeaderText="Room Description" SortExpression="RoomDesc" />
                    <asp:BoundField DataField="AvailableQty" HeaderText="Available Rooms" SortExpression="AvailableQty" />
                    <asp:BoundField DataField="TotalQty" HeaderText="Total Rooms" SortExpression="TotalQty" />
                    <asp:BoundField DataField="MaxAdults" HeaderText="MaxAdults" SortExpression="MaxAdults" />
                    <asp:BoundField DataField="MaxChildren" HeaderText="MaxChildren" SortExpression="MaxChildren" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                  <asp:TemplateField HeaderText="Image">
                  <ItemTemplate>
                    <img src='<%# "../../images/" + Eval("Image") %>' height="150" width="150" />
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
            <asp:SqlDataSource ID="RoomDataSource" runat="server"
              ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
              SelectCommand="SELECT [RoomId], [RoomType], [RoomDesc], [AvailableQty], [TotalQty], [MaxAdults], [MaxChildren], [Price], [Image] FROM [Room]"
              DeleteCommand="DELETE FROM [Room] WHERE [RoomId] = @RoomId"
              InsertCommand="INSERT INTO [Room] ([RoomId], [RoomType], [RoomDesc], [AvailableQty], [TotalQty], [MaxAdults], [MaxChildren], [Price], [Image]) VALUES (@RoomId, @RoomType, @RoomDesc, @AvailableQty, @TotalQty, @MaxAdults, @MaxChildren, @Price, @Image)"
              UpdateCommand="UPDATE [Room] SET [RoomType] = @RoomType, [RoomDesc] = @RoomDesc, [AvailableQty] = @AvailableQty, [TotalQty] = @TotalQty, [MaxAdults] = @MaxAdults, [MaxChildren] = @MaxChildren, [Price] = @Price, [Image] = @Image WHERE [RoomId] = @RoomId">
                <DeleteParameters>
                  <asp:Parameter Name="RoomId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                  <asp:Parameter Name="RoomId" Type="Int32" />
                  <asp:Parameter Name="RoomType" Type="String" />
                  <asp:Parameter Name="RoomDesc" Type="String" />
                  <asp:Parameter Name="AvailableQty" Type="Int32" />
                  <asp:Parameter Name="TotalQty" Type="Int32" />
                  <asp:Parameter Name="MaxAdults" Type="Int32" />
                  <asp:Parameter Name="MaxChildren" Type="Int32" />
                  <asp:Parameter Name="Price" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RoomId" Type="Int32" />
                    <asp:Parameter Name="RoomType" Type="String" />
                    <asp:Parameter Name="RoomDesc" Type="String" />
                    <asp:Parameter Name="AvailableQty" Type="Int32" />
                    <asp:Parameter Name="TotalQty" Type="Int32" />
                    <asp:Parameter Name="MaxAdults" Type="Int32" />
                    <asp:Parameter Name="MaxChildren" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>
