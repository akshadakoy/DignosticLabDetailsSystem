using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Diagnostic_lab_Reporting_System
{
    public partial class PatientLogin : System.Web.UI.Page
    {
        string connetionString;
        SqlConnection con;
        DataTable dt = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            connetionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Akshu\Documents\Diagnostic lab Reporting System\Diagnostic lab Reporting System\App_Data\TestbookingDb.mdf;Integrated Security=True";
            con = new SqlConnection(connetionString);
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


        }




        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            string username = txtUname.Text.Trim();
            string pwd = txtPassword.Text.Trim();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT Username,Password FROM Patient_Registration where CONVERT(VARCHAR, Username)='" + username + "' and CONVERT(VARCHAR, Password)='" + pwd + "'";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session.Add("Patient_Id", dt.Rows[0][0].ToString());
                Session.Add("Username", dt.Rows[0][1].ToString());
                Response.Redirect("~/Homepage.aspx", false);

            }
            else
            {
                Response.Write("<script>alert('Invalid username or password')</script>");
            }


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUname.Text = "";
            txtPassword.Text = "";
        }



        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (CheckBox1.Checked == false)
                {
                    string pass = txtPassword.Text;
                    txtPassword.TextMode = TextBoxMode.Password;
                    txtPassword.Attributes.Add("value", pass);
                }
                if (IsPostBack)
                {
                    if (CheckBox1.Checked == true)
                    {
                        txtPassword.TextMode = TextBoxMode.SingleLine;
                    }
                }
            }






        }
    }
}
   
