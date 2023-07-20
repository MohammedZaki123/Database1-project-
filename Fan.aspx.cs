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
    public partial class Fan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void add_fan(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String name = Fan_name.Text;
            String username = Username.Text;
            String pass = Password.Text;
            String nationalid = national_id.Text; 
            DateTime birthdate = DateTime.Parse(birth_date.Text);
            String Address = address.Text;
            String phonenumber = phone_number.Text;
            SqlCommand addFanProc = new SqlCommand("addFan", conn);
            addFanProc.CommandType = System.Data.CommandType.StoredProcedure;
            addFanProc.Parameters.Add
               (new SqlParameter("@name", name));
            addFanProc.Parameters.Add
                (new SqlParameter("@username", username));
            addFanProc.Parameters.Add
                (new SqlParameter("@password", pass));
            addFanProc.Parameters.Add
                (new SqlParameter("@national_id", nationalid));
            addFanProc.Parameters.Add
                (new SqlParameter("@birth_date", birthdate));
            addFanProc.Parameters.Add
                (new SqlParameter("@address", Address));
            addFanProc.Parameters.Add
                (new SqlParameter("@phone_no", phonenumber));
            conn.Open();
            addFanProc.ExecuteNonQuery();
            Session["Fan_username"] = username;
            conn.Close();
            Response.Redirect("Fans_Menu.aspx");
        }
    }
}