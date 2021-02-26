using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Admission
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                if (TextBox1.Text == "admin" && TextBox2.Text == "123" )
            
                {
                    Response.Redirect("Admin.aspx");
                TextBox1.Text = "";
                TextBox2.Text = "";

                }
            
            else
            {
                Label4.Text = "Invalid Username Or Password !!";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}