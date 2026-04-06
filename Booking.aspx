<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="TicketReservationSystem.Booking" %>

<!DOCTYPE html>
<html>
<head runat="server">
<title>Train Booking</title>

<style>
body {
    font-family:'Segoe UI';
    background:#eef2ff;
    text-align:center;
}

/* Card */
.container {
    background:white;
    width:450px;
    margin:30px auto;
    padding:20px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

/* Coach Layout */
.coach {
    display:grid;
    grid-template-columns: repeat(3,50px) 20px repeat(2,50px);
    gap:10px;
    justify-content:center;
    margin-top:20px;
}

.seat {
    width:50px;
    height:50px;
    background:#c7d2fe;
    display:flex;
    align-items:center;
    justify-content:center;
    border-radius:6px;
    cursor:pointer;
}

.seat:hover {
    background:#6366f1;
    color:white;
}

.seat.selected {
    background:#22c55e;
    color:white;
}

.booked {
    background:red !important;
    cursor:not-allowed;
}

.gap {
    width:20px;
}

.btn {
    padding:10px;
    background:#2563eb;
    color:white;
    border:none;
    border-radius:6px;
}
</style>

<script>
    function selectSeat(el) {
        if (el.classList.contains("booked")) return;

        el.classList.toggle("selected");

        let seats = document.querySelectorAll(".seat.selected");
        let arr = [];

        seats.forEach(s => arr.push(s.innerText));

        document.getElementById("<%= hiddenSeats.ClientID %>").value = arr.join(",");
    }
</script>

</head>

<body>

<form runat="server">

<div class="container">

<h2>🚆 Train Booking</h2>

<!-- Source -->
<asp:DropDownList ID="ddlSource" runat="server">
    <asp:ListItem>Chennai</asp:ListItem>
    <asp:ListItem>Madurai</asp:ListItem>
    <asp:ListItem>Trichy</asp:ListItem>
</asp:DropDownList>

<!-- Destination -->
<asp:DropDownList ID="ddlDest" runat="server">
    <asp:ListItem>Bangalore</asp:ListItem>
    <asp:ListItem>Coimbatore</asp:ListItem>
    <asp:ListItem>Hyderabad</asp:ListItem>
</asp:DropDownList>

<br /><br />

<!-- Date -->
<asp:Calendar ID="calDate" runat="server"></asp:Calendar>

<h3>Select Seats</h3>

<div class="coach">
    <div class="seat" id="seat1" onclick="selectSeat(this)">1</div>
    <div class="seat" id="seat2" onclick="selectSeat(this)">2</div>
    <div class="seat" id="seat3" onclick="selectSeat(this)">3</div>

    <div class="gap"></div>

    <div class="seat" id="seat4" onclick="selectSeat(this)">4</div>
    <div class="seat" id="seat5" onclick="selectSeat(this)">5</div>

    <div class="seat" id="seat6" onclick="selectSeat(this)">6</div>
    <div class="seat" id="seat7" onclick="selectSeat(this)">7</div>
    <div class="seat" id="seat8" onclick="selectSeat(this)">8</div>

    <div class="gap"></div>

    <div class="seat" id="seat9" onclick="selectSeat(this)">9</div>
    <div class="seat" id="seat10" onclick="selectSeat(this)">10</div>
</div>

<asp:HiddenField ID="hiddenSeats" runat="server" />

<br />

<asp:Button ID="btnBook" runat="server" Text="Book Ticket" CssClass="btn" OnClick="btnBook_Click"/>

<br />

<asp:Label ID="lblMsg" runat="server"></asp:Label>

</div>

</form>

</body>
</html>