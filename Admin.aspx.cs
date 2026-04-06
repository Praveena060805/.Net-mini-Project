using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TicketReservationSystem
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Only admin allowed
            if (Session["role"] == null || Session["role"].ToString() != "Admin")
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                LoadData();
            }
        }

        void LoadData()
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Tickets", con);
            DataTable dt = new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}