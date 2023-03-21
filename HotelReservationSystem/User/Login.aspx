<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelReservationSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | RTC Hotel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />
</head>

<body class="p-3">
    <div class="card">
        <div class="card-body">
            <form runat="server">
                <h2>Login</h2>

                <div class="my-3">
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
                            class="col-auto btn btn-secondary rounded-0 rounded-end"
                            type="button"
                        >
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>

                    <div class="my-3">
                        <asp:CheckBox runat="server" Text="&nbsp;&nbsp;&nbsp;Remember Me" />
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="<%= ResolveUrl("~/Scripts/bootstrap.min.js") %>"></script>
</body>
</html>
