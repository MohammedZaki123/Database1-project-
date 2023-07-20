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
    public partial class UpcomingMatches : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand upcomingmatches = new SqlCommand("Select * from allUpcomingMatches", conn);
            conn.Open();
            SqlDataReader rdr = upcomingmatches.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("first_club", typeof(string)));
            dt.Columns.Add(new DataColumn("Second_club", typeof(string)));
            dt.Columns.Add(new DataColumn("start_time", typeof(string)));
            dt.Columns.Add(new DataColumn("end_time", typeof(string)));
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    DataRow dr = dt.NewRow();
                    dr["first_club"] = rdr[0];
                    dr["Second_Club"] = rdr[1];
                    dr["start_time"] = rdr[2];
                    dr["end_time"] = rdr[3];
                    dt.Rows.Add(dr);
                }
            }
            UpcomingMatchesGridView.DataSource = dt;
            UpcomingMatchesGridView.DataBind();
            UpcomingMatchesGridView.Visible = true;
            
        }
        
    }
}