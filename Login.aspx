<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TicketReservationSystem.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
<title>Login</title>

<style>
body {
    font-family:'Segoe UI';
    background:#e2e8f0;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.card {
    background:white;
    padding:25px;
    border-radius:10px;
    width:300px;
    box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

input {
    width:100%;
    padding:8px;
    margin:10px 0;
}

.btn {
    background:#2563eb;
    color:white;
    border:none;
    padding:10px;
    width:100%;
}
</style>
</head>

<body>

<form runat="server">
<div class="card">

<h2>Login</h2>

<asp:TextBox ID="txtUser" runat="server" placeholder="Username"></asp:TextBox>

<asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>

<asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click"/>

<asp:Label ID="lblMsg" runat="server"></asp:Label>
    <br />
<a href="Register.aspx">New user? Register</a>

</div>
</form>

</body>
</html>