<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TicketReservationSystem.Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
<title>Register</title>

<style>
body {
    font-family:'Segoe UI';
    background:#f1f5f9;
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

input, select {
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

<h2>Register</h2>

<asp:TextBox ID="txtUser" runat="server" placeholder="Username"></asp:TextBox>

<asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>

<asp:DropDownList ID="ddlRole" runat="server">
    <asp:ListItem Text="User" Value="User" />
    <asp:ListItem Text="Admin" Value="Admin" />
</asp:DropDownList>

<asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click"/>
    <br />
<a href="Login.aspx">Already have account? Login</a>

<asp:Label ID="lblMsg" runat="server"></asp:Label>

</div>
</form>

</body>
</html>