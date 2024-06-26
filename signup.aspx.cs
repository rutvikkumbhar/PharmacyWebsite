using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PharmacyWebsite
{
    public partial class signup : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignin_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/signin.aspx");
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            string cs = @"data source = (localdb)\Projects;database = PharmDB; integrated security = true;";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand( "INSERT INTO UserTable (Name, Email, Password) VALUES (@name, @email, @Password)", con);
            cmd.Parameters.AddWithValue("@name",txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();

            int minLength = 4, maxLength = 8; 

            if (string.IsNullOrEmpty(txtname.Text) || string.IsNullOrEmpty(txtemail.Text) || string.IsNullOrEmpty(txtpassword.Text) || txtpassword.Text.Length < minLength || txtpassword.Text.Length > maxLength)
            {
                lblMessage.Text = "Invalid credentials. Please try again.";
            }
            else
            {
                Server.Transfer("~/home.aspx");
            }
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