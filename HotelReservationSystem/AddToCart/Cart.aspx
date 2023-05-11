<%@ Page
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="Cart.aspx.cs"
  Inherits="HotelReservationSystem.AddToCart.Cart" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style type="text/css">
    .gridHeaderRoom{
      background-color:#389271;
      color:white;
      width:40%;
    }
    .gridHeaderItem1{
      background-color:#2C644F;
      color:white;
      width:15%;
    }
    .gridHeaderItem2{
      background-color:#389271;
      color:white;
      width:50%;
    }
    .gridHeaderDlt{
      background-color:#2C644F;
      color:white;
      width:5%;
    }
    .content{
      border-bottom: 0.5px solid black;
    }
    .smallBtn{
        /*cursor:pointer;
        height:30px;
        border:none;
        background:none;
        border:1px solid black;
        border-radius: 20px;
        width:30px;*/
        background:none;
        border:1px solid grey;
        border-radius: 20px;
        width:30px;
        
    }
  </style>
<div>
    <table style="width:100%; text-align:center; margin-top:20px">
        <tr>
            <td>
              <h1 style="color:#555555">MY BOOKING LIST</h1>
            </td>
        </tr>
    </table>
    <br />
    <table style="width:100%; text-align:center">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="7" DataSourceID="SqlDataSource1"
                  HorizontalAlign="Center" ShowHeaderWhenEmpty="True" AllowPaging="True" CssClass="container text-center" GridLines="None">

                  <%--Show message when empty--%>
                  <EmptyDataRowStyle Font-Bold="true" />
                  <EmptyDataTemplate>
                    You don't have book any room yet.
                  </EmptyDataTemplate>

                  <Columns>

                      <%--Room image column--%>
                        <asp:TemplateField HeaderText="Room" HeaderStyle-CssClass="gridHeaderRoom" ItemStyle-CssClass="content">
                          <ItemTemplate>
                            <asp:Label ID="lblRoomType" runat="server" Text='<%# Eval("RoomName") %>'></asp:Label>
                          </ItemTemplate>
                        </asp:TemplateField>

                      <%--Booking Time column--%>
                        <asp:TemplateField HeaderText="Booking Time" HeaderStyle-CssClass="gridHeaderItem1" ItemStyle-CssClass="content" >
                          <ItemTemplate>
                            <%--<asp:Label ID="lblAdultPrice" runat="server" Text="Adult: RM"></asp:Label>
                            <asp:Label ID="lblUnitPriceAdult" runat="server" Text='<%# Eval("PricePerAdult") %>'></asp:Label><br />
                            <asp:Label ID="lblChildPrice" runat="server" Text="Children: RM"></asp:Label>
                            <asp:Label ID="lblUnitPriceChild" runat="server" Text='<%# Eval("PricePerChildren") %>'></asp:Label>--%>
                            <table>
                              <tr>
                                <td>
                                  <asp:Label ID="lblCheckIn" runat="server" Text="Check In: "></asp:Label>
                                  <%--<asp:Label ID="lblCheckInTime" runat="server" Text='<%# Eval("StartBookDate") %>'></asp:Label>--%>                                  
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <asp:Label ID="lblCheckOut" runat="server" Text="Check Out: "></asp:Label>
                                  <%--<asp:Label ID="lblCheckOutTime" runat="server" Text='<%# Eval("EndBookDate") %>'></asp:Label>--%>
                                </td>
                              </tr>
                            </table>
                          </ItemTemplate>
                        </asp:TemplateField>

                      <%--Info column--%>
                        <asp:TemplateField HeaderText="Booking Info" HeaderStyle-CssClass="gridHeaderItem2" ItemStyle-CssClass="content">
                          <ItemTemplate>
                            <%--<table style="width:100%">
                              <tr>
                              <td style="width:40%;text-align:right">
                                <asp:LinkButton ID="LinkButtonMinus" runat="server" CommandName="Add" ForeColor="Black">
                                  <div class="icon"><i class="bi bi-dash-circle"></i></div>
                                </asp:LinkButton>
                              </td>
                                <td style="width:20%;text-align:center">
                                  <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("PricePerAdult") %>'></asp:Label>
                                </td>
                                <td style="width:40%;text-align:left">
                                  <asp:LinkButton ID="LinkButtonAdd" runat="server" CommandName="Add" ForeColor="Black">
                              <div class="icon"><i class="bi bi-plus-circle"></i></div>
                            </asp:LinkButton>
                                </td>
                            </tr>
                            </table>--%>
                            <asp:Label ID="lblTitleRoomType" runat="server" Text="Room Type: "></asp:Label>
                            <asp:Label ID="lblRoomType" runat="server" Text='<%# Eval("RoomName") %>'></asp:Label><br />
                            <asp:Label ID="lblTitleQuantity" runat="server" Text="Quantity: "></asp:Label>
                            <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("RoomName") %>'></asp:Label><br />
                            <asp:Label ID="lblAdultPrice" runat="server" Text="Adult/Night: RM"></asp:Label>
                            <asp:Label ID="lblUnitPriceAdult" runat="server" Text='<%# Eval("PricePerAdult") %>'></asp:Label>&nbsp
                            <asp:Label ID="lblChildPrice" runat="server" Text="Children/Night: RM"></asp:Label>
                            <asp:Label ID="lblUnitPriceChild" runat="server" Text='<%# Eval("PricePerChildren") %>'></asp:Label><br />
                            <asp:Label ID="lblTitleTotalPrice" runat="server" Text="Total Price: RM"></asp:Label>
                            <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("PricePerChildren") %>'></asp:Label>
                          </ItemTemplate>
                        </asp:TemplateField>

                      <%--Total price column--%>
                        <%--<asp:TemplateField HeaderText="Total" HeaderStyle-CssClass="gridHeaderItem1" ItemStyle-CssClass="content" >

                        </asp:TemplateField>--%>

                      <%--Delete button column--%>
                        <asp:TemplateField HeaderText="" HeaderStyle-CssClass="gridHeaderDlt" ItemStyle-CssClass="content">
                          <ItemTemplate>
                            <div>
                            <asp:LinkButton ID="LinkButtonDlt" runat="server" CommandName="DeleteItem" ForeColor="#005A27">
                               <div class="icon"><i class="bi bi-trash3-fill"></i></div>
                            </asp:LinkButton>
                            </div>
                          </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                  
                    <SelectedRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RoomName], [PricePerAdult], [PricePerChildren] FROM [Room]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
            </td>
        </tr>
      <tr>
        <td colspan="2"></td>
      </tr>
      <tr>
        <td></td>
        <td style="width:50%; text-align:right;">
          <div style="margin-top: 30px; margin-left:350px; margin-right: 100px;border-top: 3px double black ;border-bottom: 3px double black; padding-top:15px; padding-bottom:15px; padding-right:50px">
            <h5>Total Price: RM
              <asp:Label ID="lblTotalPriceOfBooking" runat="server" Text=""></asp:Label>
            </h5>
          </div>
          
        </td>
      </tr>
        <tr>
          <td style="width:50%">
          <div class="" style="margin-left: 100px; margin-top: 30px; text-align:left">

            <asp:Button ID="ButtonBook" runat="server" Text="Book A Room" CssClass="btn btn-outline-danger" Width="50%" PostBackUrl="~/Booking/Booking.aspx" />

          </div>
        </td>
          <td>
          <div class="d-grid gap-2 d-md-flex justify-content-md-end" style="margin-right: 100px; margin-top: 30px">

            <asp:Button ID="ButtonCheckOut" runat="server" Text="Check Out" CssClass="btn btn-outline-primary" Width="50%" PostBackUrl="~/MakePayment/Payment.aspx" />

          </div>
        </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
