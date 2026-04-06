using System;
using System.Data.SqlClient;
using System.Configuration;

namespace TicketReservationSystem
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void btnBook_Click(object sender, EventArgs e)
        {
            if (ddlSource.SelectedValue == ddlDest.SelectedValue)
            {
                lblMsg.Text = "Source and Destination cannot be same!";
                return;
            }

            if (hiddenSeats.Value == "")
            {
                lblMsg.Text = "Select seats!";
                return;
            }

            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            con.Open();

            string[] seats = hiddenSeats.Value.Split(',');

            foreach (string seat in seats)
            {
                SqlCommand cmd = new SqlCommand(
                    "INSERT INTO Tickets (UserId, Source, Destination, TravelDate, SeatNo) VALUES (@u,@s,@d,@date,@seat)", con);

                cmd.Parameters.AddWithValue("@u", Session["uid"]);
                cmd.Parameters.AddWithValue("@s", ddlSource.SelectedValue);
                cmd.Parameters.AddWithValue("@d", ddlDest.SelectedValue);
                cmd.Parameters.AddWithValue("@date", calDate.SelectedDate);
                cmd.Parameters.AddWithValue("@seat", seat);

                cmd.ExecuteNonQuery();
            }

            con.Close();

            // ✅ IMPORTANT PART
            Session["source"] = ddlSource.SelectedValue;
            Session["dest"] = ddlDest.SelectedValue;
            Session["seats"] = hiddenSeats.Value;
            Session["date"] = calDate.SelectedDate.ToShortDateString();

            Response.Redirect("Confirmation.aspx");
        }
    }
}