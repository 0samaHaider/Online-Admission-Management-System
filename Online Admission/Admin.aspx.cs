using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Admission
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false ;
            Panel4.Visible = false;


            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;


        }
        public bool Sendmail()
        {

            try
            {

                MailMessage mail = new MailMessage();
                mail.To.Add(TextBox1.Text);
                mail.From = new MailAddress("artisticmania8@gmail.com", "University Of Rawalpindi ");
                mail.Subject = TextBox2.Text;
                mail.Body = TextBox3.Text;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential("artisticmania8@gmail.com", "42Art91429142Art914291");
                smtp.EnableSsl = true;
                smtp.Send(mail);
                Label1.Text = "Mail sent successfully";
                return true;
            }
            catch (Exception)
            {
                Label1.Text = "Network Error";
                return false;
                // Label1.Text = ex.ToString();
            }
        }

            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[4].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sendmail();
          

        }
        public bool sendaccptedmail()
        {
            try
            {

                MailMessage mail = new MailMessage();
                mail.To.Add(TextBox1.Text);
                mail.From = new MailAddress("artisticmania8@gmail.com", "University Of Rawalpindi ");
                mail.Subject = TextBox2.Text;
                mail.Body = TextBox3.Text;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential("artisticmania8@gmail.com", "42Art91429142Art914291");
                smtp.EnableSsl = true;
                smtp.Send(mail);
                Label1.Text = "Mail sent successfully";
                return true;
            }
            catch (Exception)
            {
                Label1.Text = "Network Error";
                return false;
                // Label1.Text = ex.ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Sendmail();
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {

        }

        protected void Button1_PreRender(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = true;

        }

        protected void Button4_Click2(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
            try
            {
                String mycon = " Data Source = OSAMAHAIDER; Initial Catalog = DbProject; Integrated Security = True";
                String myquery = "Select * from Data_Enter_by_Candidate where ID=" + TextBox4.Text;
                SqlConnection con = new SqlConnection(mycon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Panel4.Visible = true;
                    // Label3.Text = "Data Found";
                    Label3.Text = TextBox4.Text;
                    Label4.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                    Label5.Text = ds.Tables[0].Rows[0]["Degree"].ToString();
                    Label6.Text = ds.Tables[0].Rows[0]["Phone"].ToString();

                    Image1.ImageUrl = ds.Tables[0].Rows[0]["Pic"].ToString();
                }
                else
                {
                    Label7.Text = "Roll Number Not Found";

                }

                con.Close();
            }
            catch
            {
                Label7.Text = "Please Enter Roll Number ";

            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}