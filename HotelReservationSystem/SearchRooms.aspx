<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchRooms.aspx.cs" Inherits="Assignment.SearchRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Search Your Desired Room</h2>
    <asp:TextBox ID="LocationText" runat="server" placeholder="Location"></asp:TextBox>
    <asp:TextBox ID="NoRoomsText" runat="server" placeholder="Number of rooms"></asp:TextBox>
    <asp:TextBox ID="NoAdultsText" runat="server" placeholder="Number of adults"></asp:TextBox>
    <asp:TextBox ID="NoChildrenText" runat="server" placeholder="Number of children"></asp:TextBox>
    <asp:TextBox ID="MinPriceText" runat="server" placeholder="Minimum price"></asp:TextBox>
    <asp:TextBox ID="MaxPriceText" runat="server" placeholder="Maximum price"></asp:TextBox>
    <br />

    <br />
    <asp:Button ID="btnSearch" runat="server" Text="Button" OnClick="btnSearch_Click" />
    <br />
    <div>
        <!-- Retrieve the rooms database
            SELECT * FROM [room]
            WHERE [blah] = %LIKE% smth
            -->
        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="NumRooms" HeaderText="NumRooms" SortExpression="NumRooms" />
                <asp:BoundField DataField="NumAdults" HeaderText="NumAdults" SortExpression="NumAdults" />
                <asp:BoundField DataField="NumChildren" HeaderText="NumChildren" SortExpression="NumChildren" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>--%>

    </div>
</asp:Content>
