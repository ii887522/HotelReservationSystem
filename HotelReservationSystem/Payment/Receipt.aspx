<%@ Page
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="Receipt.aspx.cs"
  Inherits="HotelReservationSystem.Payment.Receipt" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 60%x;
            height: 22px;
        }
        .auto-style2 {
            width: 40%;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
  <table style="background-color:#8CCAB8; width:100%; align-content:center">
    <tr>
      <td style="text-align:center; padding-top:50px">
        <asp:Image ImageUrl="5290076.png" ID="image1" runat="server" Height="70px" />
      </td>
    </tr>
    <tr>
      <td>
        <h2 style="text-align:center; color:black; padding-top:10px; padding-bottom:50px">Your Payment is Successful!</h2>
      </td>
    </tr>
  </table><br />
  <table style="width:80%; margin-left:150px">
    <tr>
      <td style="border-bottom:2px solid black" colspan="2">
        <h4>Summary</h4>
      </td>
    </tr>
    <tr>
      <td class="auto-style1">ID:
          <asp:Label ID="lblPaymentID" runat="server"></asp:Label>
        </td>
      <td style="text-align:right" class="auto-style2">
          <asp:Label ID="lblDate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
      <td></td>
      <td style="text-align:right">
          <asp:Label ID="lblTime" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
      <td>Payment Details: </td>
      <td></td>
    </tr>
    <tr>
      <td>Card</td>
      <td style="text-align:right">Debit</td>
    </tr>
    <tr>
      <td>Card's Holder Name</td>
      <td style="text-align:right">XXX XXXX XXX</td>
    </tr>
    <tr style="border-bottom:2px dashed black">
      <td>Card Number</td>
      <td style="text-align:right">XXXX XXXX XXXX XXXX</td>
    </tr>
  </table>
</div>
</asp:Content>
