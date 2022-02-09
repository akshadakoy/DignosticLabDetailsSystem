using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Diagnostic_lab_Reporting_System
{
    public partial class ViewtestDetails : System.Web.UI.Page
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
            string labname = Convert.ToString(Session["test"]);

            con.Open();

            da = new SqlDataAdapter("select * from Test_Details where Laboratory_Name = '" + labname + "'", con);
            ds = new DataSet();
            da.Fill(ds,"Test_Details");
            GridView1.DataSource = ds.Tables["Test_Details"];
            GridView1.DataBind();

            con.Close();

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/PatientLogin.aspx");

        }
    }
}