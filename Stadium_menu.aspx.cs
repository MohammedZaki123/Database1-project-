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
    public partial class Stadium_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void stadium_information(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand get_stadium = new SqlCommand("viewStadium", conn);
            get_stadium.CommandType = System.Data.CommandType.StoredProcedure;
            get_stadium.Parameters.AddWithValue("@username", Session["st_manager_username"].ToString());
            conn.Open();
            SqlDataReader rdr = get_stadium.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("id", typeof(string)));
            dt.Columns.Add(new DataColumn("name", typeof(string)));
            dt.Columns.Add(new DataColumn("location", typeof(string)));
            dt.Columns.Add(new DataColumn("capacity", typeof(string)));
            dt.Columns.Add(new DataColumn("status", typeof(string)));
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    DataRow dr = dt.NewRow();
                    dr["id"] = rdr[0];
                    dr["name"] = rdr[1];
                    dr["location"] = rdr[2];
                    dr["capacity"] = rdr[3];
                    dr["status"] = rdr[4];
                    dt.Rows.Add(dr);
                }
            }
            stadium_view.DataSource = dt;
            stadium_view.DataBind();
            stadium_view.Visible = true;
        }
        protected void view_requests(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand get_requests = new SqlCommand("Select * from allPendingRequests(@username)", conn);
            get_requests.Parameters.AddWithValue("@username", Session["st_manager_username"].ToString());
            conn.Open();
            SqlDataReader rdr = get_requests.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Representative_name", typeof(string)));
            dt.Columns.Add(new DataColumn("host_club", typeof(string)));
            dt.Columns.Add(new DataColumn("guest_club", typeof(string)));
            dt.Columns.Add(new DataColumn("start_time", typeof(string)));
            dt.Columns.Add(new DataColumn("end_time", typeof(string)));
            dt.Columns.Add(new DataColumn("status", typeof(string)));
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    DataRow dr = dt.NewRow();
                    dr["Representative_name"] = rdr[0];
                    dr["host_club"] = rdr[1];
                    dr["guest_club"] = rdr[2];
                    dr["start_time"] = rdr[3];
                    dr["end_time"] = rdr[4];
                    dr["status"] = rdr[5];
                    dt.Rows.Add(dr);
                }
            }
            requests_view.DataSource = dt;
            requests_view.DataBind();
            requests_view.Visible = true;
        }
        protected void accept_requests(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String username = Session["st_manager_username"].ToString();
            String first_name = host.Text;
            String second_name = guest.Text;
            String time = start.Text;
            SqlCommand acceptrequestProc = new SqlCommand("acceptRequest", conn);
            acceptrequestProc.CommandType = System.Data.CommandType.StoredProcedure;
            acceptrequestProc.Parameters.Add
                (new SqlParameter("@username", username));
            acceptrequestProc.Parameters.Add
                (new SqlParameter("@host_name", first_name));
            acceptrequestProc.Parameters.Add
                (new SqlParameter("@guest_name", second_name));
            acceptrequestProc.Parameters.Add
                (new SqlParameter("@start", time));
            conn.Open();
            acceptrequestProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Request accepted successfully and tickets are available");
        }
        protected void reject_requests(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String username = Session["st_manager_username"].ToString();
            String first_name = host.Text;
            String second_name = guest.Text;
            String time = start.Text;
            SqlCommand rejectrequestProc = new SqlCommand("rejectRequest", conn);
            rejectrequestProc.CommandType = System.Data.CommandType.StoredProcedure;
            rejectrequestProc.Parameters.Add
                (new SqlParameter("@username", username));
            rejectrequestProc.Parameters.Add
                (new SqlParameter("@host_name", first_name));
            rejectrequestProc.Parameters.Add
                (new SqlParameter("@guest_name", second_name));
            rejectrequestProc.Parameters.Add
                (new SqlParameter("@start_time", time));

            conn.Open();
            rejectrequestProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Request rejected successfully");
        }
    }
}