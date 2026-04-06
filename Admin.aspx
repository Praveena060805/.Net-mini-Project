<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TicketReservationSystem.Admin" %>

<!DOCTYPE html>
<html>
<head runat="server">
<title>Admin</title>

<style>
body {
    font-family:'Segoe UI';
    background:#f1f5f9;
    text-align:center;
}

.grid {
    margin:30px auto;
    width:80%;
}
</style>
</head>

<body>

<form runat="server">

<h2>Admin Dashboard</h2>

<asp:GridView ID="GridView1" runat="server" CssClass="grid" />

</form>

</body>
</html>