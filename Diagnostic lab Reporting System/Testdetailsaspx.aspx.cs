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
    public partial class Testdetailsaspx : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Select Max(Test_Id)+1 from Test_Details", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtTestid.Text = dr[0].ToString();
                    if (txtTestid.Text == "")
                    {
                        txtTestid.Text = "1";
                    }
                }
            }
            else
            {
                txtTestid.Text = "1";
                return;
            }
            con.Close();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string test_id, test_name, taluka, laboratory_name, price;
            test_id = txtTestid.Text.Trim();
            test_name = txtTestname.Text.Trim();
            taluka = DropDownList2.SelectedItem.Text.Trim();
            laboratory_name = DropDownList1.SelectedItem.Text.Trim();
            price = txtPrice.Text.Trim();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Test_Details(Test_Id,Test_Name,Taluka,Laboratory_Name,Price) values(@Test_Id,@Test_Name,@Taluka,@Laboratory_Name,@Price)", con);
            cmd.Parameters.AddWithValue("@Test_Id", test_id);
            cmd.Parameters.AddWithValue("@Test_Name", test_name);
            cmd.Parameters.AddWithValue("@Taluka", taluka);
            cmd.Parameters.AddWithValue("@Laboratory_Name", laboratory_name);
            cmd.Parameters.AddWithValue("@Price", price);


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Record sucessfully inserted')</script>");
            txtTestid.Text = "";
            txtTestname.Text = "";
            txtPrice.Text = "";

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtTestid.Text = "";
            txtTestname.Text = "";
            txtPrice.Text = "";

        }




        protected void Button3_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Adminloginform.aspx");

        }

       

       

        protected void btndelete_Click(object sender, EventArgs e)
        {
            string test_id, test_name, taluka, laboratory_name, price;
            test_id = txtTestid.Text.Trim();
            test_name = txtTestname.Text.Trim();
            taluka = DropDownList2.SelectedItem.Text.Trim();
            laboratory_name = DropDownList1.SelectedItem.Text.Trim();
            price = txtPrice.Text.Trim();
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Test_Details where Test_Id=@Test_Id", con);
            cmd.Parameters.AddWithValue("@Test_Id", test_id);
            cmd.Parameters.AddWithValue("@Test_Name", test_name);
            cmd.Parameters.AddWithValue("@Taluka", taluka);
            cmd.Parameters.AddWithValue("@Laboratory_Name", laboratory_name);
            cmd.Parameters.AddWithValue("@Price", price);


            cmd.ExecuteNonQuery();
            con.Close();

        }

        

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                DropDownList1.AutoPostBack = false;
                con.Open();
                if (IsPostBack)
                {

                    string tal = DropDownList2.SelectedItem.Value;

                    DropDownList1.Items.Clear();
                    DropDownList1.Items.Add("Select Laboratory");


                    SqlCommand cmd = new SqlCommand("select * from Diagnostic_center_Details where Taluka='" + tal + "'", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Exception in Binding Laboratory Dropdownlist :" + ex.Message.ToString());
            }
            con.Close();

        }
    }
}




       
           
 


 
  

