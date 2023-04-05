<%@ Page Title="Booking Report | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="HotelReservationSystem.Booking.Admin_Booking.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1070px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="StartBookDate" HeaderText="StartBookDate" SortExpression="StartBookDate" />
            <asp:BoundField DataField="EndBookDate" HeaderText="EndBookDate" SortExpression="EndBookDate" />
            <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:CommandField ButtonType="Image" EditImageUrl="~/icons/edit.png" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" CancelImageUrl="~/icons/cancel.png" DeleteImageUrl="~/icons/delete.png" SelectImageUrl="~/icons/select.png" UpdateImageUrl="~/icons/update.png" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Booking] ([UserID], [Username], [StartBookDate], [EndBookDate], [RoomType], [Status]) VALUES (@UserID, @Username, @StartBookDate, @EndBookDate, @RoomType, @Status)" SelectCommand="SELECT * FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [Username] = @Username, [StartBookDate] = @StartBookDate, [EndBookDate] = @EndBookDate, [RoomType] = @RoomType, [Status] = @Status WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="StartBookDate" Type="DateTime" />
            <asp:Parameter Name="EndBookDate" Type="DateTime" />
            <asp:Parameter Name="RoomType" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="StartBookDate" Type="DateTime" />
            <asp:Parameter Name="EndBookDate" Type="DateTime" />
            <asp:Parameter Name="RoomType" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>
