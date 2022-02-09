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
    public partial class Feedbackform : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string  full_name,feedback;
            full_name = txtFname.Text.Trim();
            feedback = txtFeedback.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Feedback (Full_Name,Feedback) values(@Full_Name,@Feedback)", con);
            cmd.Parameters.AddWithValue("@Full_Name", full_name);
            cmd.Parameters.AddWithValue("@Feedback", feedback);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Feedback submitted Sucessfully')</script>");
            txtFname.Text = "";
            txtFeedback.Text = "";
            
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtFname.Text = "";
            txtFeedback.Text = "";
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/PatientLogin.aspx");

        }
    }
}