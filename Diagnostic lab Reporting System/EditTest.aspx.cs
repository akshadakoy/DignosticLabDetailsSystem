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
    public partial class EditTest : System.Web.UI.Page
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

        protected void btnShowtest_Click(object sender, EventArgs e)
        {
            String labname = DropDownList1.SelectedItem.Text.Trim();
            con.Open();

            da = new SqlDataAdapter("select Test_Id,Test_Name,Price from Test_Details where Laboratory_Name='" + labname + "'", con);
            ds = new DataSet();
            da.Fill(ds, "Test_Details");
            GridView1.DataSource = ds.Tables["Test_Details"];
            GridView1.DataBind();

            con.Close();  
        }


        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txttestid.Text = GridView1.SelectedRow.Cells[1].Text;
            txtTestname.Text = GridView1.SelectedRow.Cells[2].Text;
            txtPrice.Text = GridView1.SelectedRow.Cells[3].Text;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            String test_id, price;
            test_id = txttestid.Text.Trim();
            price = txtPrice.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("update Test_Details set Price=@Price where Test_Id=@Test_Id", con);
            cmd.Parameters.AddWithValue("@Price", price);
            cmd.Parameters.AddWithValue("@Test_Id", test_id);
            cmd.ExecuteNonQuery();
            String labname = DropDownList1.SelectedItem.Text.Trim();
           
            da = new SqlDataAdapter("select Test_Id,Test_Name,Price from Test_Details where Laboratory_Name='" + labname + "'", con);
            ds = new DataSet();
            da.Fill(ds, "Test_Details");
            GridView1.DataSource = ds.Tables["Test_Details"];
            GridView1.DataBind();

            con.Close();
            Response.Write("<script>alert('Update sucessfully')</script>");

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            String test_id, test_name, price ;
            test_id = txttestid.Text.Trim();
            test_name = txtTestname.Text.Trim();
            price = txtPrice.Text.Trim();
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Test_Details where Test_Id=@Test_Id", con);
            cmd.Parameters.AddWithValue("@Test_Id", test_id);
            cmd.Parameters.AddWithValue("@Test_Name", test_name);
            cmd.Parameters.AddWithValue("@Price", price);
            cmd.ExecuteNonQuery();
            String labname = DropDownList1.SelectedItem.Text.Trim();
           
            da = new SqlDataAdapter("select Test_Id,Test_Name,Price from Test_Details where Laboratory_Name='" + labname + "'", con);
            ds = new DataSet();
            da.Fill(ds, "Test_Details");
            GridView1.DataSource = ds.Tables["Test_Details"];
            GridView1.DataBind();

           
            con.Close();
        }

      }
}