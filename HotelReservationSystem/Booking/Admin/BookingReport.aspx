<%@ Page Title="Booking Report | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="HotelReservationSystem.Booking.Admin_Booking.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1119px" DataKeyNames="BookID" DataSourceID="SqlDataSource1" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField CancelImageUrl="~/icons/cancel.png" DeleteImageUrl="~/icons/delete.png" ShowDeleteButton="True" />
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="StartBookDate" HeaderText="StartBookDate" SortExpression="StartBookDate" />
            <asp:BoundField DataField="EndBookDate" HeaderText="EndBookDate" SortExpression="EndBookDate" />
            <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
            <asp:BoundField DataField="RoomId" HeaderText="RoomId" SortExpression="RoomId" />
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HotelReservationSystem.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Book] ([BookID], [UserID], [StartBookDate], [EndBookDate], [Qty], [RoomId], [OrderId]) VALUES (@BookID, @UserID, @StartBookDate, @EndBookDate, @Qty, @RoomId, @OrderId)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [UserID] = @UserID, [StartBookDate] = @StartBookDate, [EndBookDate] = @EndBookDate, [Qty] = @Qty, [RoomId] = @RoomId, [OrderId] = @OrderId WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookID" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="StartBookDate" Type="DateTime" />
            <asp:Parameter Name="EndBookDate" Type="DateTime" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="RoomId" Type="Int32" />
            <asp:Parameter Name="OrderId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="StartBookDate" Type="DateTime" />
            <asp:Parameter Name="EndBookDate" Type="DateTime" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="RoomId" Type="Int32" />
            <asp:Parameter Name="OrderId" Type="Int32" />
            <asp:Parameter Name="BookID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>
