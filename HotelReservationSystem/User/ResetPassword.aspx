<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="HotelReservationSystem.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password | RTC Hotel</title>
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
                    <i class="bi bi-arrow-counterclockwise"></i>
                    Reset Password
                </h2>

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
                    
                <asp:Button runat="server" class="btn btn-warning w-100 mt-3 mb-4" Text="Reset" />
            </form>
        </div>
    </div>

    <script src="<%= ResolveUrl("~/Scripts/bootstrap.min.js") %>"></script>
</body>
</html>
