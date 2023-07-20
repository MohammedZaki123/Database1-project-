using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone3._1
{
    public partial class Representative_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void club_information(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand get_club = new SqlCommand("viewclub", conn);
            get_club.CommandType = System.Data.CommandType.StoredProcedure;
            get_club.Parameters.AddWithValue("@username", Session["Rep_username"].ToString());
            conn.Open();
            SqlDataReader rdr = get_club.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("club_id", typeof(string)));
            dt.Columns.Add(new DataColumn("name", typeof(string)));
            dt.Columns.Add(new DataColumn("location", typeof(string)));
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    DataRow dr = dt.NewRow();
                    dr["club_id"] = rdr[0];
                    dr["name"] = rdr[1];
                    dr["location"] = rdr[2];
                    dt.Rows.Add(dr);
                }
            }
            informationView.DataSource = dt;
            informationView.DataBind();
            informationView.Visible = true;
        }
        protected void upcoming_matches(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
           ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand get_matches  = new SqlCommand("Select * from upcomingMatchesOfClub(@username)", conn);
            get_matches.Parameters.AddWithValue("@username", Session["Rep_username"].ToString());
            conn.Open();
            SqlDataReader rdr = get_matches.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("first_club", typeof(string)));
            dt.Columns.Add(new DataColumn("Second_club", typeof(string)));
            dt.Columns.Add(new DataColumn("start_time", typeof(string)));
            dt.Columns.Add(new DataColumn("end_time", typeof(string)));
            dt.Columns.Add(new DataColumn("stadium_name", typeof(string)));
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    DataRow dr = dt.NewRow();
                    dr["first_club"] = rdr[0];
                    dr["Second_Club"] = rdr[1];
                    dr["start_time"] = rdr[2];
                    dr["end_time"] = rdr[3];
                    dr["stadium_name"] = rdr[4];
                    dt.Rows.Add(dr);
                }
            }
            upcoming_matches_View.DataSource = dt;
            upcoming_matches_View.DataBind();
            upcoming_matches_View.Visible = true;
        }
        protected void available_stadiums(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand get_stadiums = new SqlCommand("Select * from viewAvailableStadiumsOn(@datetime)", conn);
            get_stadiums.Parameters.AddWithValue("@datetime", datetimebox.Text);
            conn.Open();
            SqlDataReader rdr = get_stadiums.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("name", typeof(string)));
            dt.Columns.Add(new DataColumn("capacity", typeof(string)));
            dt.Columns.Add(new DataColumn("location", typeof(string)));
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    DataRow dr = dt.NewRow();
                    dr["name"] = rdr[0];
                    dr["capacity"] = rdr[1];
                    dr["location"] = rdr[2];
                    dt.Rows.Add(dr);
                }
            }
            Stadiumsview.DataSource = dt;
            Stadiumsview.DataBind();
            Stadiumsview.Visible = true;
        }
        protected void host_request(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String username =Session["Rep_username"].ToString();
            String stadium = Stadium.Text;
            DateTime time = DateTime.Parse(start.Text);
            SqlCommand hostRequestProc = new SqlCommand("addHostRequest", conn);
            hostRequestProc.CommandType = System.Data.CommandType.StoredProcedure;
            hostRequestProc.Parameters.Add(new SqlParameter("@username", username));
            hostRequestProc.Parameters.Add(new SqlParameter("@stadium_name", stadium));
            hostRequestProc.Parameters.Add(new SqlParameter("@start_time", time));
            conn.Open();
            hostRequestProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Request Sent Successfully");
        }
    }
}