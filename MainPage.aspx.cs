using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone3._1
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void System_admin_registred(object sender, EventArgs e)
        {
            Response.Redirect("SystemAdminlogin.aspx");
        }
        protected void association_manager_registred(object sender, EventArgs e)
        {
            Response.Redirect("association_manager.aspx");
        }
        protected void club_representative_registred(object sender, EventArgs e)
        {
            Response.Redirect("Club_representative.aspx");
        }
        protected void stadium_manager_registred(object sender, EventArgs e)
        {
            Response.Redirect("Stadium_Manager.aspx");
        }
        protected void fan_registred(object sender, EventArgs e)
        {
            Response.Redirect("Fan.aspx");
        }
    }
}
