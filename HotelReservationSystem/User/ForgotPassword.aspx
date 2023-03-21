<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="HotelReservationSystem.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password | RTC Hotel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />
</head>

<body class="p-3">
    <div style="max-width: 512px;" class="card m-auto">
        <div class="card-body">
            <form runat="server">
                <h2>
                    <i class="bi bi-pencil-square me-2"></i>
                    Forgot Password
                </h2>

                <div class="mt-4">
                    <asp:Label class="form-label" runat="server" Text="Recover by" />

                    <asp:DropDownList class="form-select" runat="server">
                        <asp:ListItem>Email Address</asp:ListItem>
                        <asp:ListItem>Mobile Phone</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="my-3">
                    <asp:Label class="form-label" runat="server" Text="Email address" />

                    <div class="row gx-0">
                        <asp:TextBox
                            class="col form-control rounded-0 rounded-start"
                            runat="server"
                            TextMode="Email"
                        />

                        <asp:Button class="col-auto btn btn-info rounded-0 rounded-end" runat="server" Text="Send" />
                    </div>
                </div>

                <div class="my-3">
                    <asp:Label class="form-label" runat="server" Text="OTP" />

                    <asp:TextBox
                        class="col form-control rounded-0 rounded-start"
                        runat="server"
                    />
                </div>
                    
                <asp:Button runat="server" class="btn btn-primary w-100 mt-3 mb-4" Text="Recover" PostBackUrl="~/User/ResetPassword.aspx" />
                <asp:HyperLink runat="server" NavigateUrl="~/User/Login.aspx">Back to login</asp:HyperLink>
            </form>
        </div>
    </div>

    <script src="<%= ResolveUrl("~/Scripts/bootstrap.min.js") %>"></script>
</body>
</html>
