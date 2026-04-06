using System;
using System.Data.SqlClient;
using System.Configuration;

namespace TicketReservationSystem
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand(
                "INSERT INTO Users (Username, Password, Role) VALUES (@u,@p,@r)", con);

            cmd.Parameters.AddWithValue("@u", txtUser.Text);
            cmd.Parameters.AddWithValue("@p", txtPass.Text);
            cmd.Parameters.AddWithValue("@r", ddlRole.SelectedValue);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMsg.Text = "Registered Successfully!";
        }
    }
}