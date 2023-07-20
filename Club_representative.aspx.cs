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
    public partial class Club_representative : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void add_representative(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String name = Name.Text;
            String username = Username.Text;
            String pass = Password.Text;
            String clubname = Clubname.Text;
            SqlCommand addRepresentativeProc = new SqlCommand("addRepresentative", conn);
            addRepresentativeProc.CommandType = System.Data.CommandType.StoredProcedure;
            addRepresentativeProc.Parameters.Add
               (new SqlParameter("@username", username));
            addRepresentativeProc.Parameters.Add
                (new SqlParameter("@name", name));
            addRepresentativeProc.Parameters.Add
                (new SqlParameter("@club_name", clubname));
            addRepresentativeProc.Parameters.Add
                (new SqlParameter("@password", pass));


            conn.Open();
            addRepresentativeProc.ExecuteNonQuery();
            Session["Rep_username"] = username;
            conn.Close();
            Response.Write("Hello Club Representative!");
            Response.Redirect("Representative_menu.aspx");
            
           
        }
    }
}