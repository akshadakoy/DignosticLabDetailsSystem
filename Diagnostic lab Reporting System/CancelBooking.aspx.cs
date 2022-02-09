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
    public partial class CancelBooking : System.Web.UI.Page
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

        protected void btnMyappointment_Click(object sender, EventArgs e)
        {
            con.Open();

            da = new SqlDataAdapter("select * from Book_Appointment where Patient_Id ='" + txtPid.Text.Trim() +"'",con);
            ds = new DataSet();
            da.Fill(ds, "Book_Appointment");
            GridView1.DataSource = ds.Tables["Book_Appointment"];
            GridView1.DataBind();


            con.Close();  

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String appointment_no = GridView1.SelectedRow.Cells[1].Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Book_Appointment where Appointment_No=@Appointment_No", con);
            cmd.Parameters.AddWithValue("@Appointment_No", appointment_no);
            cmd.ExecuteNonQuery();

            da = new SqlDataAdapter("select * from Book_Appointment where Patient_Id ='" + txtPid.Text.Trim() + "'", con);
            ds = new DataSet();
            da.Fill(ds, "Book_Appointment");
            GridView1.DataSource = ds.Tables["Book_Appointment"];
            GridView1.DataBind();

            con.Close();
        }

        protected void btn_logout(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/PatientLogin.aspx");


        }

        
    }
}