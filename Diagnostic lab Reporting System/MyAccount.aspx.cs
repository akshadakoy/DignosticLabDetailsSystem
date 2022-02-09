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
    public partial class MyAccount : System.Web.UI.Page
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
            String patient_id, full_name, age, gender, address, contact_no, email_id, username, password, confirm_password;
            patient_id = txtPid.Text.Trim();
            full_name = txtFname.Text.Trim();
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
            email_id = txtEid.Text.Trim();
            username = txtUname.Text.Trim();
            password = txtPswd1.Text.Trim();
            confirm_password = txtConfpswd1.Text.Trim();


            con.Open();
            SqlCommand cmd = new SqlCommand("update Patient_Registration set Patient_Id=@Patient_Id,Full_Name=@Full_Name,Age=@Age,Gender=@Gender,Address=@Address,Contact_no=@Contact_no,Username=@Username,Password=@Password,Confirm_Password=@Confirm_Password where Patient_Id=@Patient_Id", con);
          
            cmd.Parameters.AddWithValue("@Full_Name", full_name);
            cmd.Parameters.AddWithValue("@Age", age);
            cmd.Parameters.AddWithValue("@Gender", gender);
            cmd.Parameters.AddWithValue("@Address", address);
            cmd.Parameters.AddWithValue("@Contact_no", contact_no);
            cmd.Parameters.AddWithValue("@Email_id", email_id);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@Confirm_Password", confirm_password);
            cmd.Parameters.AddWithValue("@Patient_Id", patient_id);


            cmd.ExecuteNonQuery();


            con.Close();  
        }

        protected void btnDeleteacc_Click(object sender, EventArgs e)
        {
            String patient_id, full_name, age, gender, address, contact_no, email_id, username, password, confirm_password;
            patient_id = txtPid.Text.Trim();
            full_name = txtFname.Text.Trim();
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
            email_id = txtEid.Text.Trim();
            username = txtUname.Text.Trim();
            password = txtPswd1.Text.Trim();
            confirm_password = txtConfpswd1.Text.Trim();


            con.Open();
            SqlCommand cmd = new SqlCommand("delete Patient_Registration where Patient_Id=@Patient_Id", con);
            cmd.Parameters.AddWithValue("@Patient_Id", patient_id);
            cmd.Parameters.AddWithValue("@Full_Name", full_name);
            cmd.Parameters.AddWithValue("@Age", age);
            cmd.Parameters.AddWithValue("@Gender", gender);
            cmd.Parameters.AddWithValue("@Address", address);
            cmd.Parameters.AddWithValue("@Contact_no", contact_no);
            cmd.Parameters.AddWithValue("@Email_id", email_id);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@Confirm_Password", confirm_password);

            cmd.ExecuteNonQuery();


            con.Close();  
        }

        protected void txtPid_TextChanged(object sender, EventArgs e)
        {
            SqlCommand cmd;
            String str;

            con.Open();

            str = "select Full_Name,Age,Gender,Address,Contact_no,Email_id,Username,Password,Confirm_Password from Patient_Registration where Patient_Id = '" + txtPid.Text.Trim() + "'";
            cmd = new SqlCommand(str, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                txtFname.Text = reader["Full_Name"].ToString();
                txtAge.Text = reader["Age"].ToString();
                String gender = reader["Gender"].ToString();
                if (gender == "Male")
                {
                    rdb_male.Checked = true;
                }
                else if (gender == "Female")
                {
                    rdb_female.Checked = true;
                }
                txtAddress.Text = reader["Address"].ToString();
                txtCno.Text = reader["Contact_no"].ToString();
                txtEid.Text = reader["Email_id"].ToString();
                txtUname.Text = reader["Username"].ToString();
                txtPswd1.Text = reader["Password"].ToString();
                txtConfpswd1.Text = reader["Confirm_Password"].ToString();
                reader.Close();
                con.Close();
        }

       


        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/PatientLogin.aspx");
        }

       
    }
}