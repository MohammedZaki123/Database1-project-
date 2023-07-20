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
    public partial class SystemAdminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void add_System_admin(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String name = Admin_name.Text;
            String username = Username.Text;
            String pass = Password.Text;
            SqlCommand addSystemAdminProc = new SqlCommand("addSystemAdmin", conn);
            addSystemAdminProc.CommandType = System.Data.CommandType.StoredProcedure;
            addSystemAdminProc.Parameters.Add
                (new SqlParameter("@name", name));
            addSystemAdminProc.Parameters.Add
                (new SqlParameter("@username", username));
            addSystemAdminProc.Parameters.Add
                (new SqlParameter("@password", pass));
            conn.Open();
            addSystemAdminProc.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("SystemAdmin.aspx");
            Session["admin_username"] = username;
        }
    }
}