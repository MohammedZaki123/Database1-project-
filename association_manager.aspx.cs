using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace Milestone3._1
{
    public partial class association_manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void add_association_manager (object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String name = association_name.Text;
            String username = Username.Text; 
            String pass = Password.Text;
            SqlCommand addAssociationManagerProc = new SqlCommand("addAssociationManager",conn);
            addAssociationManagerProc.CommandType = System.Data.CommandType.StoredProcedure;
            addAssociationManagerProc.Parameters.Add
                (new SqlParameter("@name", name ));
            addAssociationManagerProc.Parameters.Add
                (new SqlParameter("@username", username));
            addAssociationManagerProc.Parameters.Add
                (new SqlParameter("@password", pass));
            conn.Open(); 
            addAssociationManagerProc.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Matches.aspx");
            Session["association_username"] = username;
            
        }

        protected void Name_TextChanged(object sender, EventArgs e)
        {

        }
    }
}