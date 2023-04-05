<%@
  Page Language="C#"
  MasterPageFile="~/AdminPage.Master"
  AutoEventWireup="true"
  CodeBehind="AdminPayment.aspx.cs"
  Inherits="HotelReservationSystem.Payment.AdminPayment" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <script src="https://kit.fontawesome.com/6b764a3e0e.js" crossorigin="anonymous"></script>

<div>
  <div>
    <h3 style="text-align:center">Sales Table</h3>
  </div>
  <div style="text-align:center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PaymentId"
      DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowPaging="True"
      BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="PaymentId" HeaderText="ID " ReadOnly="True" SortExpression="PaymentId" />
            <asp:BoundField DataField="PaymentMethod" HeaderText="Debit/Credit" SortExpression="PaymentMethod" />
            <asp:BoundField DataField="CardNum" HeaderText="Card Number" SortExpression="CardNum" />
            <asp:BoundField DataField="CardCvv" HeaderText="Card Cvv" SortExpression="CardCvv" />
            <asp:BoundField DataField="CardHolderName" HeaderText="Card's Holder Name" SortExpression="CardHolderName" />
            <asp:BoundField DataField="ExpMonth" HeaderText="Expiry Month" SortExpression="ExpMonth" />
            <asp:BoundField DataField="ExpYear" HeaderText="Expiry Year" SortExpression="ExpYear" />
            <asp:TemplateField HeaderText="Delete" HeaderStyle-CssClass="actionheader" ItemStyle-CssClass="action">
              <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="DeleteItem" ForeColor="green">
                                            <div class="icon"><i class="fa-solid fa-trash"></i></div>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PaymentId], [PaymentMethod], [CardNum], [CardCvv], [CardHolderName], [ExpMonth], [ExpYear] FROM [Payment]"></asp:SqlDataSource>
    </div>
</div>
</asp:Content>    
