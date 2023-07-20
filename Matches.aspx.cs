using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
namespace Milestone3._1
{
    public partial class Matches : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Adding_Matches(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String first_name = host_name.Text;
            String second_name = guest_name.Text;
            DateTime start = DateTime.Parse(start_time.Text);
            DateTime end = DateTime.Parse(end_time.Text);
            SqlCommand AddingMatchesProc = new SqlCommand("addNewMatch", conn);
            AddingMatchesProc.CommandType = System.Data.CommandType.StoredProcedure;
            AddingMatchesProc.Parameters.Add(new SqlParameter("@first_component", first_name));
            AddingMatchesProc.Parameters.Add(new SqlParameter("@second_component",second_name));
            AddingMatchesProc.Parameters.Add(new SqlParameter("@start_time", start));
            AddingMatchesProc.Parameters.Add(new SqlParameter("@end_time", end));
            conn.Open();
            AddingMatchesProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Matches added Successfully");
        }
        protected void Deleting_Matches(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String first_name = host_name.Text;
            String second_name = guest_name.Text;
            DateTime start = DateTime.Parse(start_time.Text);
            DateTime end = DateTime.Parse(end_time.Text);
            SqlCommand deletingMatchesProc = new SqlCommand("deleteMatch", conn);
            deletingMatchesProc.CommandType = System.Data.CommandType.StoredProcedure;
            deletingMatchesProc.Parameters.Add(new SqlParameter("@first_component", first_name));
            deletingMatchesProc.Parameters.Add(new SqlParameter("@second_component", second_name));
            deletingMatchesProc.Parameters.Add(new SqlParameter("@start_time", start));
            deletingMatchesProc.Parameters.Add(new SqlParameter("@end_time", end));
            conn.Open();
            deletingMatchesProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Matches deleted Successfully");
        }
        protected void upcoming_matches_page(object sender,EventArgs e)
        {
            Response.Redirect("UpcomingMatches.aspx");
        }
        protected void old_matches_page(object sender,EventArgs e)
        {
            Response.Redirect("oldmatches.aspx");
        }
        protected void clubs_never_matched(object sender, EventArgs e)
        {
            Response.Redirect("clubsnevermatched.aspx");
        }
       
    }
}