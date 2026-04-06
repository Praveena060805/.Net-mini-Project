
 Railway Ticket Reservation System

 Project Description

The Railway Ticket Reservation System is a web-based application developed using ASP.NET Web Forms and SQL Server.
It allows users to register, log in, book train tickets by selecting source, destination, date, and seats, and generate a ticket confirmation.

The system also includes an Admin Dashboard to view all bookings.



 Features

*  User Registration and Login
*  Role-based Authentication (User/Admin)
*  Train Ticket Booking
*  Seat Selection System
*  Ticket Confirmation Page
*  Print Ticket Option
*  Admin Dashboard (View All Bookings)
*  Session-based Login & Logout



 Technologies Used

* Frontend: HTML, CSS
* Backend: ASP.NET (C#)
* Database: SQL Server
* DE: Visual Studio



 Project Flow


Home → Register → Login → Validate
         ↓
   User / Admin
     ↓       ↓
 Booking   Admin Panel
     ↓
 Confirmation
     ↓
   Logout

 Project Structure

```
TicketReservationSystem/
│
├── Home.aspx
├── Register.aspx
├── Login.aspx
├── Booking.aspx
├── Confirmation.aspx
├── Admin.aspx
├── Web.config
└── Database Scripts



 Database Design

Users Table

| Column Name | Type     |
| ----------- | -------- |
| UserId      | INT (PK) |
| Username    | VARCHAR  |
| Password    | VARCHAR  |
| Role        | VARCHAR  |


 Tickets Table

| Column Name | Type     |
| ----------- | -------- |
| TicketId    | INT (PK) |
| UserId      | INT      |
| Source      | VARCHAR  |
| Destination | VARCHAR  |
| TravelDate  | DATE     |
| SeatNo      | VARCHAR  |


 How to Run the Project

1. Open project in **Visual Studio**
2. Ensure SQL Server is running
3. Create database **TicketDB**
4. Run SQL scripts for tables
5. Update connection string in `Web.config`
6. Press **F5** to run the project

 Key Concepts Used

* Session Management
* Database Connectivity (ADO.NET)
* Role-based Authorization
* CRUD Operations
* Event Handling in ASP.NET


Future Enhancements

* Online Payment Integration
* Train Schedule Management
* Seat Availability Filtering
* Email/SMS Ticket Confirmation
* Modern UI Design

 Conclusion

This project demonstrates a basic yet effective implementation of an online railway ticket booking system. It helps in understanding web development concepts like authentication, database integration, and user interface design.


 Author

Praveena A
B.Sc Computer Science

