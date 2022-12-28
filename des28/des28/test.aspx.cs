using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace des28
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["count"] = 1;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
            
            
            
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label2.Text = DateTime.Now.ToString();
            int x=Convert.ToInt32(Session["count"]);
            Image1.ImageUrl = @"~\img\" + Session["count"].ToString() + ".png";
            x++;
           
            if (x <= 3)
            {
                Session["count"] = x;
            }
            else
            {
                Session["count"] = 1;   
            }
        }
    }
}