using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PharmacyWebsite
{
    public partial class DeleteAllDataFromDataBase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDeleteAll_Click(object sender, EventArgs e)
        {
            string cs = @"data source = (localdb)\Projects;database = PharmDB; integrated security = true;";

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM UserTable", con);

                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                     Response.Write("All records deleted successfully.");
                }
                else
                {
                    Response.Write("All records not deleted");
                }
            }
        }

    }
}