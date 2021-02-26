using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Online_Admission
{
    public partial class ApplyOnline : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet da = new DataSet();
        string imagelink;
        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data Source = OSAMAHAIDER; Initial Catalog = DbProject; Integrated Security = True";
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                int s = 45;

            try
            {
                int b = int.Parse(TextBox11.Text);
                if (b >= s)
                {
                    if (FileUpload1.HasFile)
                    {
                        string str = FileUpload1.FileName;
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/pics/" + str));
                        string Pic = "~/pics/" + str.ToString();
                        string Name = TextBox1.Text;
                        String CNIC = TextBox2.Text;
                        String Email = TextBox3.Text;
                        String Gender = DropDownList2.Text;
                        String FName = TextBox4.Text;
                        String FCNIC = TextBox5.Text;
                        String Adress = TextBox6.Text;
                        String City = TextBox7.Text;
                        String Phone= TextBox8.Text;
                        String FPhone = TextBox9.Text;
                        String MMarks = TextBox10.Text;
                        String IMarks = TextBox11.Text;
                        String Degree = DropDownList1.Text;

                        SqlConnection con = new SqlConnection(@"Data Source = OSAMAHAIDER; Initial Catalog = DbProject; Integrated Security = True");
                        SqlCommand cmd = new SqlCommand("insert into Data_Enter_by_Candidate values(@Name,@CNIC,@Email,@Gender,@FName,@FCNIC,@Adress,@City,@Phone,@FPhone,@MMarks,@IMarks,@Degree,@Pic)", con);
                        cmd.Parameters.AddWithValue("@Name", Name);
                        cmd.Parameters.AddWithValue("@CNIC", CNIC);
                        cmd.Parameters.AddWithValue("@Email", Email);
                        cmd.Parameters.AddWithValue("@Gender", Gender);
                        cmd.Parameters.AddWithValue("@FName", FName);
                        cmd.Parameters.AddWithValue("@FCNIC", FCNIC);
                        cmd.Parameters.AddWithValue("@Adress", Adress);
                        cmd.Parameters.AddWithValue("@City", City);
                        cmd.Parameters.AddWithValue("@Phone", Phone);
                        cmd.Parameters.AddWithValue("@FPhone", FPhone);
                        cmd.Parameters.AddWithValue("@MMarks", MMarks);
                        cmd.Parameters.AddWithValue("@IMarks", IMarks);
                        cmd.Parameters.AddWithValue("@Degree", Degree);

                        cmd.Parameters.AddWithValue("Pic", Pic);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        Label15.Text = "Your Data is Inserted !!";
                       Label15.ForeColor = System.Drawing.Color.ForestGreen;
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";
                        TextBox8.Text = "";
                        TextBox9.Text = "";
                        TextBox10.Text = "";
                        TextBox11.Text = "";
                        DropDownList1.SelectedValue = null;
                        DropDownList2.SelectedValue = null;




                    }

                    else
                    {
                        Label15.Text = "Please Upload your Image";
                        Label15.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    Label15.Text = "Sorry Your Are Not Eligible ";
                    Label15.ForeColor = System.Drawing.Color.Red;

                }
            }
            catch
            {

            }

             

        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}