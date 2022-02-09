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
    public partial class Registrationformaspx : System.Web.UI.Page
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

        protected void btnNew_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Max(Patient_Id)+1 from Patient_Registration", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtPid.Text = dr[0].ToString();
                    if (txtPid.Text == "")
                    {
                        txtPid.Text = "1";
                    }
                }
            }
            else
            {
                txtPid.Text = "1";
                return;
            }
            con.Close();

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
           
          string patient_id,full_name,age,gender,address,contact_no,email_id,username, password,confirm_password;
            patient_id = txtPid.Text.Trim();
            full_name  = txtFname.Text.Trim();
            age = txtAge.Text.Trim();
            gender = string.Empty;
            if (rdb_male.Checked)
            {
                gender = "Male";
            }
            else if (rdb_female.Checked)
            {
                gender = "Female";
            }
            address = txtAddress.Text.Trim();
            contact_no = txtCno.Text.Trim();
            email_id= txtEid.Text.Trim();
            username = txtUname.Text.Trim();
            password = txtPswd.Text.Trim();
            confirm_password = txtConfpswd.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Patient_Registration(Patient_Id,Full_Name,Age,Gender,Address,Contact_no,Email_id,Username,Password,Confirm_Password) values(@Patient_Id,@Full_Name,@Age,@Gender,@Address,@Contact_no, @Email_id, @Username, @Password, @Confirm_Password)", con);
            cmd.Parameters.AddWithValue("@Patient_Id",patient_id);
            cmd.Parameters.AddWithValue("@Full_Name",full_name);
            cmd.Parameters.AddWithValue("@Age",age);
            cmd.Parameters.AddWithValue("@Gender",gender);
            cmd.Parameters.AddWithValue("@Address",address);
            cmd.Parameters.AddWithValue("@Contact_no",contact_no);
            cmd.Parameters.AddWithValue("@Email_id",email_id);
            cmd.Parameters.AddWithValue("@Username",username);
            cmd.Parameters.AddWithValue("@Password",password);
            cmd.Parameters.AddWithValue("@Confirm_Password",confirm_password);

            cmd.ExecuteNonQuery();  
            con.Close();
            Response.Write("<script>alert('Registration sucessfully completed')</script>");

            txtPid.Text = "";
            txtFname.Text = "";
            txtAge.Text = "";
            rdb_male.Checked = false;
            rdb_female.Checked = false;
            txtAddress.Text = "";
            txtCno.Text = "";
            txtEid.Text = "";
            txtUname.Text = "";
            txtPswd.Text = "";
            txtConfpswd.Text = "";
            Response.Redirect("~/PatientLogin.aspx");
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtPid.Text = "";
            txtFname.Text = "";
            txtAge.Text = "";
            rdb_male.Checked = false;
            rdb_female.Checked = false;
            txtAddress.Text = "";
            txtCno.Text = "";
            txtEid.Text = "";
            txtUname.Text = "";
            txtPswd.Text = "";
            txtConfpswd.Text = "";
        }
    }
}