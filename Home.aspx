<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TicketReservationSystem.Home" %>

<!DOCTYPE html>
<html>
<head runat="server">
<title>Home</title>

<style>
body {
    font-family:'Segoe UI';
    background:linear-gradient(to right,#e0f2fe,#f8fafc);
    text-align:center;
    overflow:hidden;
}

/* Train Animation */
.train {
    position:absolute;
    bottom:30px;
    left:-200px;
    width:200px;
    height:40px;
    background:#2563eb;
    animation:moveTrain 8s linear infinite;
}

@keyframes moveTrain {
    from { left:-200px; }
    to { left:100%; }
}

.card {
    margin-top:150px;
}
a {
    display:block;
    margin:10px;
    padding:10px;
    background:#2563eb;
    color:white;
    text-decoration:none;
    border-radius:6px;
}
</style>
</head>

<body>

<div class="train"></div>

<div class="card">
<h2>🚆 Railway Reservation System</h2>
<a href="Register.aspx">Register</a>
<a href="Login.aspx">Login</a>
</div>

</body>
</html>