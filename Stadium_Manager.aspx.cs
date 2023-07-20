using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone3._1
{
    public partial class Stadium_Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void add_StadiumManager(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String name = Manager_name.Text;
            String username = Username.Text;
            String pass = Password.Text;
            String stadiumname = Stadium_name.Text;
            SqlCommand addStadiumManagerProc = new SqlCommand("addStadiumManager", conn);
            addStadiumManagerProc.CommandType = System.Data.CommandType.StoredProcedure;
            addStadiumManagerProc.Parameters.Add
               (new SqlParameter("@name", name));
            addStadiumManagerProc.Parameters.Add
                (new SqlParameter("@stadium_name", stadiumname));
            addStadiumManagerProc.Parameters.Add
                (new SqlParameter("@username", username));
            addStadiumManagerProc.Parameters.Add
                (new SqlParameter("@password", pass));


            conn.Open();
            addStadiumManagerProc.ExecuteNonQuery();
            Session["st_manager_username"] = username;
            conn.Close();
            Response.Write("Hello Stadium Manager!");
            Response.Redirect("Stadium_menu.aspx");
        }
    }
}