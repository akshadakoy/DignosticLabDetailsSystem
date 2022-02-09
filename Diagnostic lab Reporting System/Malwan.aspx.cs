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
    public partial class Malwan : System.Web.UI.Page
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

            con.Open();

            da = new SqlDataAdapter("select * from Diagnostic_center_Details where Taluka = 'Malwan'", con);
            ds = new DataSet();
            da.Fill(ds, "Diagnostic_center_Details");
            GridView1.DataSource = ds.Tables["Diagnostic_center_Details"];
            GridView1.DataBind();

            con.Close();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string labname = GridView1.SelectedRow.Cells[2].Text.Trim();
            Session["test"] = labname;
            Response.Redirect("ViewtestDetails.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/PatientLogin.aspx");
        }
    }
}