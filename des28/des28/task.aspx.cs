using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace des28
{
    public partial class task : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection c = new SqlConnection("data source = DESKTOP-78B3490\\SQLEXPRESS; database = AJAX ; integrated security=SSPI");
                c.Open();

                string Q = "insert into comment (text) values (@text)";
                SqlCommand cmd = new SqlCommand(Q, c);
                cmd.Parameters.AddWithValue("@text", TextBox1.Text);
                cmd.ExecuteNonQuery();

                Label2.Text = "Thank you for adding a comment";
                Label3.Text = TextBox1.Text;
                c.Close();
            }
            catch(SqlException m)
            {
                Response.Write(m.Message);
            }
           

        }
    }
};