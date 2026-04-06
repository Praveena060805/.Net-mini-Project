<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="TicketReservationSystem.Confirmation" %>

<!DOCTYPE html>
<html>
<head runat="server">
<title>Ticket</title>

<style>
body {
    font-family:'Segoe UI';
    background:#e2e8f0;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

/* Ticket Card */
.ticket {
    width:400px;
    background:white;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
    overflow:hidden;
}

/* Header */
.header {
    background:#2563eb;
    color:white;
    padding:15px;
    text-align:center;
}

/* Content */
.content {
    padding:20px;
}

.row {
    display:flex;
    justify-content:space-between;
    margin:10px 0;
}

/* Footer */
.footer {
    text-align:center;
    padding:15px;
}

.btn {
    padding:10px;
    background:#16a34a;
    color:white;
    border:none;
    border-radius:6px;
}
</style>
</head>

<body>

<form runat="server">

<div class="ticket">

    <div class="header">
        🚆 Railway Ticket
    </div>

    <div class="content">

        <div class="row">
            <b>User ID:</b>
            <span><%= Session["uid"] %></span>
        </div>

        <div class="row">
            <b>From:</b>
            <span><%= Session["source"] %></span>
        </div>

        <div class="row">
            <b>To:</b>
            <span><%= Session["dest"] %></span>
        </div>

        <div class="row">
            <b>Date:</b>
            <span><%= Session["date"] %></span>
        </div>

        <div class="row">
            <b>Seats:</b>
            <span><%= Session["seats"] %></span>
        </div>

    </div>

    <div class="footer">
        <button class="btn" onclick="window.print()">🖨 Print Ticket</button>
    </div>

</div>

</form>

</body>
</html>