using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace Diagnostic_lab_Reporting_System
{
    public partial class Forgetpasswordform : System.Web.UI.Page
    {
        string connetionString;
        SqlConnection con;
        SqlCommand com;
        SqlDataAdapter da = null;
        DataSet ds = null;
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            connetionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Akshu\Documents\Diagnostic lab Reporting System\Diagnostic lab Reporting System\App_Data\TestbookingDb.mdf;Integrated Security=True";
            con = new SqlConnection(connetionString);
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            String admin_name,new_password;
            admin_name = txtAdminname.Text.Trim();
            new_password = txtNewpsrd.Text.Trim();
           

            con.Open();
            SqlCommand cmd = new SqlCommand("update Admin_Login set Password=@Password where Admin_name=@Admin_name", con);
            cmd.Parameters.AddWithValue("@Admin_name",admin_name);
            cmd.Parameters.AddWithValue("@Password",new_password);
            
            cmd.ExecuteNonQuery();
            con.Close();
            lbltxt.Visible = true;
            lbltxt.Text = "Password recovered sucessfully";
           
            
          
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtAdminname.Text = "";
            txtNewpsrd.Text = "";
        }

      

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (CheckBox1.Checked == false)
                 {
                    string pass= txtNewpsrd.Text;
                    txtNewpsrd.TextMode = TextBoxMode.Password;
                    txtNewpsrd.Attributes.Add("value", pass);
                 }
           if (IsPostBack)
             {
                    if (CheckBox1.Checked == true)
                    {
                        txtNewpsrd.TextMode = TextBoxMode.SingleLine;
                    }
             }

            }
        }

        
       

        

    

        }

        
  }
