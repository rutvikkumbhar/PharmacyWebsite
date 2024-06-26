using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PharmacyWebsite
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/signup.aspx");
        }

        protected void btnsignin_Click(object sender, EventArgs e)
        {  
            string cs = @"data source = (localdb)\Projects;database = PharmDB; integrated security = true;" ;
            SqlConnection con = new SqlConnection(cs);
                string query = "SELECT COUNT(*) FROM UserTable WHERE Email=@email AND Password=@password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Text);

                    con.Open();
                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0 && !string.IsNullOrEmpty(txtemail.Text) && !string.IsNullOrEmpty(txtpassword.Text))
                    {
                        Server.Transfer("~/home.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Invalid Username or Password..";
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