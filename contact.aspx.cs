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
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginlogo_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("~/signin.aspx");
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            string cs = @"data source = (localdb)\Projects;database = PharmDB; integrated security = true;";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("INSERT INTO ContactTable (fullname, Email, subject , Message) VALUES (@fullname, @email, @subject , @message)", con);
            cmd.Parameters.AddWithValue("@fullname", txtfullname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@subject", txtsubject.Text);
            cmd.Parameters.AddWithValue("@message", txtmessage.Text);

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();

            if (string.IsNullOrEmpty(txtfullname.Text) || string.IsNullOrEmpty(txtemail.Text) || string.IsNullOrEmpty(txtsubject.Text))
            {
                lblMessage.Text = "Invalid credentials. Please try again.";
            }
            else
            {
                lblMessage.Text = "Response submitted successfully.";
            }
        }
        protected void addtocarticon_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("~/cart.aspx");
        }
    }
}