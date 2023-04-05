<%@ Page Title="Booking Report | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="HotelReservationSystem.Booking.Admin_Booking.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1119px" DataKeyNames="BookID" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="StartBookDate" HeaderText="StartBookDate" SortExpression="StartBookDate" />
            <asp:BoundField DataField="EndBookDate" HeaderText="EndBookDate" SortExpression="EndBookDate" />
            <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:CommandField CancelImageUrl="~/icons/cancel.png" DeleteImageUrl="~/icons/delete.png" EditImageUrl="~/icons/edit.png" SelectImageUrl="~/icons/select.png" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateImageUrl="~/icons/update.png" ButtonType="Image" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HotelReservationSystem.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Book] ([BookID], [UserID], [Username], [StartBookDate], [EndBookDate], [RoomType], [Status]) VALUES (@BookID, @UserID, @Username, @StartBookDate, @EndBookDate, @RoomType, @Status)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [UserID] = @UserID, [Username] = @Username, [StartBookDate] = @StartBookDate, [EndBookDate] = @EndBookDate, [RoomType] = @RoomType, [Status] = @Status WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="StartBookDate" Type="DateTime" />
            <asp:Parameter Name="EndBookDate" Type="DateTime" />
            <asp:Parameter Name="RoomType" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="StartBookDate" Type="DateTime" />
            <asp:Parameter Name="EndBookDate" Type="DateTime" />
            <asp:Parameter Name="RoomType" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="BookID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>
