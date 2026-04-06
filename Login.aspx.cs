using System;
using System.Data.SqlClient;
using System.Configuration;

namespace TicketReservationSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand(
                "SELECT UserId, Role FROM Users WHERE Username=@u AND Password=@p", con);

            cmd.Parameters.AddWithValue("@u", txtUser.Text);
            cmd.Parameters.AddWithValue("@p", txtPass.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                // Store session
                Session["uid"] = dr["UserId"].ToString();
                Session["role"] = dr["Role"].ToString();

                // Role-based redirect
                if (dr["Role"].ToString() == "Admin")
                    Response.Redirect("Admin.aspx");
                else
                    Response.Redirect("Booking.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Login!";
            }

            con.Close();
        }
    }
}