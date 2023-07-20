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
    public partial class clubsnevermatched : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
           ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand nevermatched = new SqlCommand("Select * from clubsNeverMatched", conn);
            conn.Open();
            SqlDataReader rdr = nevermatched.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("First_club", typeof(string)));
            dt.Columns.Add(new DataColumn("Second_club", typeof(string)));
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    DataRow dr = dt.NewRow();
                    dr["first_club"] = rdr[0];
                    dr["Second_Club"] = rdr[1];
                    dt.Rows.Add(dr);
                }
            }
            clubsgridview.DataSource = dt;
            clubsgridview.DataBind();
            clubsgridview.Visible = true;
        }
    }
}