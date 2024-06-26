using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PharmacyWebsite
{
    public partial class accountdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void loginlogo_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("~/signin.aspx");
        }
        protected void addtocarticon_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("~/cart.aspx");
        }
    }
}
