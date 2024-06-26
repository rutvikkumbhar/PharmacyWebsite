using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PharmacyWebsite
{
    public partial class secureinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = @"data source=(localdb)\Projects;database=PharmDB;integrated security=true;";
            string query = "SELECT * FROM AddressTable";

            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    // Create a DataTable to hold the data
                    DataTable dt = new DataTable();

                    // Execute the command and fill the DataTable with the data
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(dt);

                    // Bind the DataTable to the GridView
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            lblMessage.Text = "Address Details";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = @"data source=(localdb)\Projects;database=PharmDB;integrated security=true;";
            string query = "SELECT name, email FROM UserTable";

            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    // Create a DataTable to hold the data
                    DataTable dt = new DataTable();

                    // Execute the command and fill the DataTable with the data
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(dt);

                    // Bind the DataTable to the GridView
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            lblMessage.Text = "Account Details";
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string cs = @"data source=(localdb)\Projects;database=PharmDB;integrated security=true;";
            string query = "SELECT * FROM ContactTable";

            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    // Create a DataTable to hold the data
                    DataTable dt = new DataTable();

                    // Execute the command and fill the DataTable with the data
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(dt);

                    // Bind the DataTable to the GridView
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            lblMessage.Text = "Contact Details";
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