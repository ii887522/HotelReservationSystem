<%@ Page
  Language="C#"
  MasterPageFile="~/Site1.Master"
  AutoEventWireup="true"
  CodeBehind="Payment.aspx.cs"
  Inherits="HotelReservationSystem.Payment.Payment" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <style type="text/css">
    .Overlay {
      position: fixed;
      top: 0px;
      bottom: 0px;
      left: 0px;
      right: 0px;
      overflow: hidden;
      padding: 0;
      margin: 0;
      background-color: #000;
      filter: alpha(opacity=50);
      opacity: 0.5;
      z-index: 1000;
    }

    .PopUpPanel {
      position: absolute;
      background-color: white;
      top: 40%;
      left: 30%;
      z-index: 2001;
      padding-left: 20px;
      padding-right: 20px;
      padding-top: 20px;
      padding-bottom: 20px;
      min-width: 300px;
      max-width: 300px;
      -moz-box-shadow: 3.5px 4px 5px #000000;
      -webkit-box-shadow: 3.5px 4px 5px #000000;
      box-shadow: 3.5px 4px 5px #000000;
      border-radius: 10px;
      -moz-border-radiux: 10px;
      -webkit-border-radiux: 10px;
      border: 1px solid black;
    }
  </style>
  <script type="text/javascript">
    var closepopup = function () {
      document.getElementById('<%= panelOverlay.ClientID%>').style.visibility = 'hidden';
      document.getElementById('<%= panelPopUpPanel.ClientID %>').style.visibility = 'hidden';
    }
    </script>

    <script src="https://kit.fontawesome.com/6b764a3e0e.js" crossorigin="anonymous"></script>
  <div style="background-color:white">
    <table style="width:77%; margin-left:150px; margin-top:30px; border-bottom:2px solid #C4C4C4;">
      <tr>
        <td>
          <h1 style="color:#555555">CHECK OUT</h1>
        </td>
      </tr>
    </table>
    <br />
     <div class="row">
      <div class="col-sm-6 mb-3 mb-sm-0" style="width:40%" >
        <div class="card" style="margin-left:150px;background-color:#E8E8E8; border-color:#E8E8E8" >
          <div class="card-body">
            <div style="font-size: x-large">
              <i class="fa-solid fa-circle-info"></i>
              Personal Info<br />
              <br />
            </div>
            <div class="mb-3">
              Full Name:<br />
              <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Eg. DXXX JXXX HXXX"></asp:TextBox>
              <br />
              Email address:<br />
              <div class="input-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Eg. abc"></asp:TextBox>
                <span class="input-group-text">@</span>
                <asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control" placeholder="Eg. gmail"></asp:TextBox>
                <span class="input-group-text">.com</span>
              </div>

              <br />
              Phone Number:<br />
              <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Eg. 012-XXXXXXXXX"></asp:TextBox>
            </div>
          </div>
        </div>
        </div>
        <div class="col-sm-6 mb-3 mb-sm-0" style="width: 60%">
        <div class="card" style="margin-right: 200px; border: none">
          <div class="card-body">
            <div style="font-size: x-large">
              <i class="fa-solid fa-credit-card"></i>
              Payment Method<br />
              <br />
            </div>
            <div class="btn-group" style="width: 100%">
              <asp:Button ID="btnCredit" runat="server" Text="Credit Card" CssClass="btn btn-outline-secondary" OnClick="btnCredit_Click" />
              <asp:Button ID="btnDebit" runat="server" Text="Debit Card" CssClass="btn btn-outline-secondary" OnClick="btnDebit_Click" />
            </div>
            <br />
            <br />
            <div class="row">
              <div class="col">
                Card Number:
                               
                        <asp:TextBox ID="txtCardNum" runat="server" CssClass="form-control" placeholder="Please insert 16 numbers"></asp:TextBox>
              </div>
              <div class="col">
                CVV:<br />
                <asp:TextBox ID="txtCvv" runat="server" CssClass="form-control" placeholder="Please insert 4 numbers"></asp:TextBox>
              </div>
            </div>
            <br />
            <div class="mb-3">
              Card Holder Name:<br />
              <asp:TextBox ID="txtCardHolder" runat="server" CssClass="form-control" placeholder="Please insert card's holder full name"></asp:TextBox>
              <br />
              Card Expiry Date:<br />
              <div class="col; btn-group" style="width: 100%">
                <asp:DropDownList ID="ddlExpMon" runat="server" CssClass="form-select">
                  <asp:ListItem>JANUARY</asp:ListItem>
                  <asp:ListItem>FEBRUARY</asp:ListItem>
                  <asp:ListItem>MARCH</asp:ListItem>
                </asp:DropDownList>
                <span class="input-group-text">/</span>
                <asp:DropDownList ID="ddlExpYear" runat="server" CssClass="form-select">
                  <asp:ListItem>2023</asp:ListItem>
                  <asp:ListItem>2024</asp:ListItem>
                  <asp:ListItem>2025</asp:ListItem>
                </asp:DropDownList>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   
    <table style="width: 87%; margin-top:30px; margin-bottom:30px ">
      <tr>
        <td>
          <div class="d-grid gap-2 d-md-flex justify-content-md-end">

            <asp:Button ID="btnPay" runat="server" Text="PAY" CssClass="btn btn-success" Width="10%" PostBackUrl="~/Payment/Receipt.aspx" />
            <asp:Button ID="btnBack" runat="server" Text="BACK" CssClass="btn btn-danger" Width="10%" OnClick="btnBack_Click" /> <%--OnClientClick="openModal()"--%>
            <!--Modal-->
            <table>
              <tr>
                <td>
                  <asp:Panel ID="panelOverlay" Style="visibility:hidden" runat="server" class="Overlay" Visible="true"></asp:Panel>
                  <asp:Panel ID="panelPopUpPanel" Style="visibility: hidden" runat="server" class="PopUpPanel" Visible="true">
                  <table style="width:100%" >
                    <%--<tr>
                      <td>
                        <div>
                          <asp:LinkButton></asp:LinkButton>
                          <asp:Button ID="Button1" OnClientClick="self.closepopup(); return false" Text="No" runat="server" CssClass="btn btn-secondary" />
                        </div>
                      </td>
                    </tr>--%>
                    <tr>
                      <td>
                        <div style="text-align:center">Are you sure to cancel your payment? If click yes you will proceed to Homepage.</div>
                      </td>
                    </tr>
                    <tr >
                      <td>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end" style="margin-top: 20px; margin-bottom: 5px">
                          <asp:Button ID="btnYes" OnClientClick="window.location.href='/Home.aspx'; return false" Text="Yes" runat="server" CssClass="btn btn-outline-success" style="border:none"/>
                          &nbsp
                        <asp:Button ID="btnNo" OnClientClick="self.closepopup(); return false" Text="No" runat="server" CssClass="btn btn-outline-secondary" style="border:none"/>
                        </div>
                      </td>
                    </tr>
                  </table>
                    </asp:Panel>
                </td>
              </tr>
            </table>
          </div>
        </td>
      </tr>
    </table>
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  </div>
</asp:Content>

