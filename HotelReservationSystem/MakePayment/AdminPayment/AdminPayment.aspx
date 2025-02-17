<%@ Page
  Title="Payment | RTC Hotel"
  Language="C#"
  MasterPageFile="~/AdminPage.Master"
  AutoEventWireup="true"
  CodeBehind="AdminPayment.aspx.cs"
  Inherits="HotelReservationSystem.Payment.AdminPayment" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
  <div>
    <h3 style="text-align:center">Payment Table</h3>
  </div>
  <div style="text-align:center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PaymentId"
      DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowPaging="True"
      BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="PaymentId" HeaderText="PaymentId" ReadOnly="True" SortExpression="PaymentId" />
            <asp:BoundField DataField="PaymentMethod" HeaderText="PaymentMethod" SortExpression="PaymentMethod" />
            <asp:BoundField DataField="CardNum" HeaderText="CardNum" SortExpression="CardNum" />
            <asp:BoundField DataField="CardCvv" HeaderText="CardCvv" SortExpression="CardCvv" />
            <asp:BoundField DataField="CardHolderName" HeaderText="CardHolderName" SortExpression="CardHolderName" />
            <asp:BoundField DataField="ExpMonth" HeaderText="ExpMonth" SortExpression="ExpMonth" />
            <asp:BoundField DataField="ExpYear" HeaderText="ExpYear" SortExpression="ExpYear" />
          <asp:TemplateField HeaderText="Delete" HeaderStyle-CssClass="actionheader" ItemStyle-CssClass="action">
            <ItemTemplate>
              <asp:LinkButton ID="LinkButton1" runat="server" CommandName="DeleteItem" ForeColor="#005A27">
                                            <div class="icon"><i class="bi bi-trash3-fill"></i></div>
              </asp:LinkButton>
            </ItemTemplate>
          </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ connectionStrings:LocalSqlServer %>" SelectCommand="SELECT [PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [ExpMonth], [ExpYear] FROM [Payment]" ProviderName="<%$ connectionStrings:LocalSqlServer.ProviderName %>"></asp:SqlDataSource>
    </div>
</div>
</asp:Content>    
