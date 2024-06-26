using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PharmacyWebsite
{
    public partial class address : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            string cs = @"data source = (localdb)\Projects;database = PharmDB; integrated security = true;";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("INSERT INTO AddressTable (FirstName, LastName, Email, Phone, AlPhone, Pincode, Address) VALUES (@firstname, @lastname, @email, @phone, @alphone, @pincode, @address)", con);
            cmd.Parameters.AddWithValue("@firstname", txtfirst.Text);
            cmd.Parameters.AddWithValue("@lastname", txtlast.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.Parameters.AddWithValue("@alphone", txtalphone.Text);
            cmd.Parameters.AddWithValue("@pincode", txtpincode.Text);
            cmd.Parameters.AddWithValue("address", txtaddress.Text);

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();

            if (string.IsNullOrEmpty(txtfirst.Text) || string.IsNullOrEmpty(txtemail.Text) || string.IsNullOrEmpty(txtlast.Text) || string.IsNullOrEmpty(txtphone.Text) || string.IsNullOrEmpty(txtaddress.Text) )
            {
                lblMessage.Text = "Please Fill the Address Properly.";
            }
            else
            {
                Server.Transfer("~/buy.aspx");
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

        public int rowAffected { get; set; }
    }
}