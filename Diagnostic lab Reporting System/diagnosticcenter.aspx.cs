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
    public partial class diagnosticcenter : System.Web.UI.Page
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

            da = new SqlDataAdapter("select * from Diagnostic_center_Details ", con);
            ds = new DataSet();
            da.Fill(ds, "Diagnostic_center_Details ");
            GridView1.DataSource = ds.Tables["Diagnostic_center_Details "];
            GridView1.DataBind();

            con.Close();
        }

       

        protected void btnNew_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Max(Laboratory_Id)+1 from Diagnostic_center_Details", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtlabid.Text = dr[0].ToString();
                    if (txtlabid.Text == "")
                    {
                        txtlabid.Text = "1";
                    }
                }
            }
            else
            {
                txtlabid.Text = "1";
                return;
            }
            con.Close();

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string laboratory_id, laboratory_name, laboratory_email, taluka, full_address, contact_no,bank_name, account_no,ifsc_code;
            laboratory_id = txtlabid.Text.Trim();
            laboratory_name = txtlabname.Text.Trim();
            laboratory_email = txtlabemail.Text.Trim();
            taluka = DropDownList1.SelectedItem.Text.Trim();
            full_address = txtFullA.Text.Trim();
            contact_no = txtcno.Text.Trim();
            bank_name = txtbankname.Text.Trim();
            account_no = txtAccno.Text.Trim();
            ifsc_code = txtIfsc.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Diagnostic_center_Details(Laboratory_id,Laboratory_Name,Laboratory_Email,Taluka,Full_Address,Contact_No,Bank_Name,Account_No,Ifsc_Code) values(@Laboratory_id,@Laboratory_Name,@Laboratory_Email,@Taluka,@Full_Address,@Contact_No,@Bank_Name,@Account_No,@Ifsc_Code)", con);
            cmd.Parameters.AddWithValue("@Laboratory_id", laboratory_id);
            cmd.Parameters.AddWithValue("@Laboratory_Name", laboratory_name);
            cmd.Parameters.AddWithValue("@Laboratory_Email", laboratory_email);
            cmd.Parameters.AddWithValue("@Taluka", taluka);
            cmd.Parameters.AddWithValue("@Full_Address", full_address);
            cmd.Parameters.AddWithValue("@Contact_No", contact_no);
            cmd.Parameters.AddWithValue("@Bank_Name", bank_name);
            cmd.Parameters.AddWithValue("@Account_No", account_no);
            cmd.Parameters.AddWithValue("@Ifsc_Code", ifsc_code);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Record sucessfully inserted')</script>");
            txtlabid.Text = "";
            txtlabname.Text = "";
            txtlabemail.Text = "";
            txtFullA.Text = "";
            txtcno.Text = "";
            txtbankname.Text = "";
            txtAccno.Text = "";
            txtIfsc.Text = ""; 
        }

        protected void btnRst_Click(object sender, EventArgs e)
        {
            txtlabid.Text = "";
            txtlabname.Text = "";
            txtlabemail.Text = "";
            txtFullA.Text = "";
            txtcno.Text = "";
            txtbankname.Text = "";
            txtAccno.Text = "";
            txtIfsc.Text = "";

        }

        

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Adminloginform.aspx");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            String laboratory_id, laboratory_name, laboratory_email, taluka, full_address, contact_no, bank_name, account_no, ifsc_code ;
            laboratory_id = txtlabid.Text.Trim();
            laboratory_name = txtlabname.Text.Trim();
            laboratory_email = txtlabemail.Text.Trim();
            taluka = DropDownList1.SelectedItem.Text.Trim();
            full_address = txtFullA.Text.Trim();
            contact_no = txtcno.Text.Trim();
            bank_name = txtbankname.Text.Trim();
            account_no = txtAccno.Text.Trim();
            ifsc_code = txtIfsc.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("update Diagnostic_center_Details set Laboratory_Name=@Laboratory_Name,Laboratory_Email=@Laboratory_Email,Taluka=@Taluka,Full_Address=@Full_Address,Contact_No=@Contact_No,Bank_Name=@Bank_Name,Account_No=@Account_No,Ifsc_Code=@Ifsc_Code where Laboratory_id=@Laboratory_id", con);
            cmd.Parameters.AddWithValue("@Laboratory_id", laboratory_id);
            cmd.Parameters.AddWithValue("@Laboratory_Name", laboratory_name);
            cmd.Parameters.AddWithValue("@Laboratory_Email", laboratory_email);
            cmd.Parameters.AddWithValue("@Taluka", taluka);
            cmd.Parameters.AddWithValue("@Full_Address", full_address);
            cmd.Parameters.AddWithValue("@Contact_No", contact_no);
            cmd.Parameters.AddWithValue("@Bank_Name", bank_name);
            cmd.Parameters.AddWithValue("@Account_No", account_no);
            cmd.Parameters.AddWithValue("@Ifsc_Code", ifsc_code);
            cmd.ExecuteNonQuery();


            con.Close();  
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            String laboratory_id, laboratory_name, laboratory_email, taluka, full_address, contact_no, bank_name, account_no, ifsc_code; ;
            laboratory_id = txtlabid.Text.Trim();
            laboratory_name = txtlabname.Text.Trim();
            laboratory_email = txtlabemail.Text.Trim();
            taluka = DropDownList1.SelectedItem.Text.Trim();
            full_address = txtFullA.Text.Trim();
            contact_no = txtcno.Text.Trim();
            bank_name = txtbankname.Text.Trim();
            account_no = txtAccno.Text.Trim();
            ifsc_code = txtIfsc.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Diagnostic_center_Details where Laboratory_id=@Laboratory_id", con);
            cmd.Parameters.AddWithValue("@Laboratory_id", laboratory_id);
            cmd.Parameters.AddWithValue("@Laboratory_Name", laboratory_name);
            cmd.Parameters.AddWithValue("@Laboratory_Email", laboratory_email);
            cmd.Parameters.AddWithValue("@Taluka", taluka);
            cmd.Parameters.AddWithValue("@Full_Address", full_address);
            cmd.Parameters.AddWithValue("@Contact_No", contact_no);
            cmd.Parameters.AddWithValue("@Bank_Name", bank_name);
            cmd.Parameters.AddWithValue("@Account_No", account_no);
            cmd.Parameters.AddWithValue("@Ifsc_Code", ifsc_code);
            cmd.ExecuteNonQuery();


            con.Close();  
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtlabid.Text = GridView1.SelectedRow.Cells[1].Text;
            txtlabname.Text = GridView1.SelectedRow.Cells[2].Text;
            txtlabemail.Text = GridView1.SelectedRow.Cells[3].Text;
            DropDownList1.Text = GridView1.SelectedRow.Cells[4].Text;
            txtFullA.Text = GridView1.SelectedRow.Cells[5].Text;
            txtcno.Text = GridView1.SelectedRow.Cells[6].Text;
            txtbankname.Text = GridView1.SelectedRow.Cells[7].Text;
            txtAccno.Text = GridView1.SelectedRow.Cells[8].Text;
            txtIfsc.Text = GridView1.SelectedRow.Cells[9].Text;
        }

       
    }
}