<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="HotelReservationSystem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up | RTC Hotel</title>
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
                    Sign Up
                </h2>

                <div class="mt-4">
                    <asp:Label class="form-label" runat="server" Text="Username" />
                    <asp:TextBox class="form-control" runat="server" />
                </div>

                <div class="my-3">
                    <asp:Label class="form-label" runat="server" Text="Password" />

                    <div class="row gx-0">
                        <asp:TextBox
                            class="col form-control rounded-0 rounded-start"
                            runat="server"
                            TextMode="Password"
                        />

                        <button
                            class="col-auto btn btn-danger rounded-0 rounded-end"
                            type="button"
                        >
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>

                <div class="my-3">
                    <asp:Label class="form-label" runat="server" Text="Retype password" />

                    <div class="row gx-0">
                        <asp:TextBox
                            class="col form-control rounded-0 rounded-start"
                            runat="server"
                            TextMode="Password"
                        />

                        <button
                            class="col-auto btn btn-danger rounded-0 rounded-end"
                            type="button"
                        >
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>

                <div class="my-3">
                    <asp:Label class="form-label" runat="server" Text="Email address" />
                    <asp:TextBox class="form-control" runat="server" TextMode="Email" />
                </div>

                <div class="my-3">
                    <asp:Label class="form-label" runat="server" Text="Mobile phone" />
                    <asp:TextBox class="form-control" runat="server" TextMode="Phone" />
                </div>
                    
                <asp:Button runat="server" class="btn btn-primary w-100 mt-3 mb-4" Text="Sign Up" />
                <asp:HyperLink runat="server" NavigateUrl="~/User/Login.aspx">Back to login</asp:HyperLink>
            </form>
        </div>
    </div>

    <script src="<%= ResolveUrl("~/Scripts/bootstrap.min.js") %>"></script>
</body>
</html>
