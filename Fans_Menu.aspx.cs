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
    public partial class Fans_Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void view_matches(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand viewmatches = new SqlCommand("Select * from availableMatchesToAttend(@datetime)", conn);
            viewmatches.Parameters.AddWithValue("@datetime", datetimebox.Text);
            conn.Open();
            SqlDataReader rdr = viewmatches.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("First_club", typeof(string)));
            dt.Columns.Add(new DataColumn("Second_club", typeof(string)));
            dt.Columns.Add(new DataColumn("Stadium_name", typeof(string)));
            dt.Columns.Add(new DataColumn("location", typeof(string)));
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    DataRow dr = dt.NewRow();
                    dr["First_club"] = rdr[0];
                    dr["Second_Club"] = rdr[1];
                    dr["Stadium_name"] = rdr[2];
                    dr["location"] = rdr[3];
                    dt.Rows.Add(dr);
                }
            }
            matches_view.DataSource = dt;
            matches_view.DataBind();
            matches_view.Visible = true;

        }
        protected void purchase_ticket(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String nationalid = National_id.Text;
            String host = host_club.Text;
            String guest = guest_club.Text;
            String location = Location.Text;
            SqlCommand purchaseticketProc = new SqlCommand("purchaseTicket", conn);
            purchaseticketProc.CommandType = System.Data.CommandType.StoredProcedure;
            purchaseticketProc.Parameters.Add
               (new SqlParameter("@national_id", nationalid));
            purchaseticketProc.Parameters.Add
                (new SqlParameter("@host_name", host));
            purchaseticketProc.Parameters.Add
                (new SqlParameter("@guest_name", guest));
            purchaseticketProc.Parameters.Add
                (new SqlParameter("@location", location));
            conn.Open();
            purchaseticketProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Ticket Purchased Successfully!");
        }

    }
    }
