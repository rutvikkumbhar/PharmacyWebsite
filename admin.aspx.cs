using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PharmacyWebsite
{
    public partial class admin : System.Web.UI.Page
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
        protected void btnsignin_Click(object sender, EventArgs e)
        {

            if (txtid.Text == "123" && txtpassword.Text == "1234")
            {
                Server.Transfer("~/secureinfo.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Username or Password..";
            }


        }
    }
}