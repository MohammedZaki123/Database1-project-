using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Milestone3._1
{
    public partial class SystemAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Adding_Club(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String club_name = Club_name.Text;
            String location = Club_Location.Text;
            SqlCommand addClubProc = new SqlCommand("addClub", conn);
            addClubProc.CommandType = System.Data.CommandType.StoredProcedure;
            addClubProc.Parameters.Add
                (new SqlParameter("@name", club_name));
            addClubProc.Parameters.Add
                (new SqlParameter("@location", location));
            conn.Open();
            addClubProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Club Added Successfully");

        }
        protected void deleting_Club(object sender,EventArgs eventArgs)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String club_name = Delete_club_name.Text;
            SqlCommand deleteClubProc = new SqlCommand("deleteClub", conn);
            deleteClubProc.CommandType = System.Data.CommandType.StoredProcedure;
            deleteClubProc.Parameters.Add(new SqlParameter("@name", club_name));
            conn.Open();
            deleteClubProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Club deleted Successfully");
        }
        protected void adding_Stadium(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String stadium_name = StadiumName.Text;
            String location = StadiumLocation.Text;
            int capacity = Int16.Parse(StadiumCapacity.Text);
            SqlCommand addStadiumProc = new SqlCommand("addStadium", conn);
            addStadiumProc.CommandType = System.Data.CommandType.StoredProcedure;
            addStadiumProc.Parameters.Add(new SqlParameter("@name", stadium_name));
            addStadiumProc.Parameters.Add(new SqlParameter("@location", location));
            addStadiumProc.Parameters.Add(new SqlParameter("@capacity", capacity));
            conn.Open();
            addStadiumProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Stadium added Successfully");
        }
        protected void deleting_Stadium(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String name = delete_Stadium_name.Text;
            SqlCommand deleteStadiumProc = new SqlCommand("deleteStadium", conn);
            deleteStadiumProc.CommandType = System.Data.CommandType.StoredProcedure;
            deleteStadiumProc.Parameters.Add(new SqlParameter("@name", name));
            conn.Open();
            deleteStadiumProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Stadium deleted Successfully");
        }
        protected void blocking_Fan(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
            ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String id = National_id.Text;
            SqlCommand blockFanProc = new SqlCommand("blockFan", conn);
            blockFanProc.CommandType = System.Data.CommandType.StoredProcedure;
            blockFanProc.Parameters.Add(new SqlParameter("@national_id", id));
            conn.Open();
            blockFanProc.ExecuteNonQuery();
            conn.Close();
            Response.Write("Fans blocked Successfully");
        }
    }
}