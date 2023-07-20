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
    public partial class StartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.
             ConnectionStrings["Milestone3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String username = Username.Text;
            String pass = Password.Text;
            SqlCommand loginProc = new SqlCommand("userlogin", conn);
            loginProc.CommandType = System.Data.CommandType.StoredProcedure;
            loginProc.Parameters.Add
                (new SqlParameter("@username", username));
            loginProc.Parameters.Add
                (new SqlParameter("@password", pass));
            SqlParameter success = loginProc.Parameters.Add
                ("@success", System.Data.SqlDbType.Int);
            SqlParameter type = loginProc.Parameters.Add
                ("@type", System.Data.SqlDbType.Int);
            success.Direction = System.Data.ParameterDirection.Output;
            type.Direction = System.Data.ParameterDirection.Output;
            conn.Open();
            loginProc.ExecuteNonQuery();
            conn.Close();
            if(success.Value.ToString() == "1" && type.Value.ToString() == "1")
            {
                Session["association_username"] = username;
                Response.Redirect("Matches.aspx");
            }
            else if (success.Value.ToString()=="1" && type.Value.ToString()=="2")
            {
                Session["Rep_username"] = username;
                Response.Redirect("Representative_menu.aspx");
            }
            else if(success.Value.ToString() == "1" && type.Value.ToString() == "3")
            {
                Session["Fan_username"] = username;
                Response.Redirect("Fans_Menu.aspx");
            }
            else if (success.Value.ToString() == "1" && type.Value.ToString() == "4")
            {
                Session["st_manager_username"] = username;
                Response.Redirect("Stadium_menu.aspx");
            }
            else if (success.Value.ToString() == "1" && type.Value.ToString() == "5")
            {
                Session["admin_username"] = username;
                Response.Redirect("SystemAdmin.aspx");
            }
            else if(success.Value.ToString() == "0" && type.Value.ToString()=="0")
            {
                Response.Write("Incorrect username or password / If you are Fan then Unfortunately you are blocked");
            }
        }
        protected void first_time(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }
    }
}