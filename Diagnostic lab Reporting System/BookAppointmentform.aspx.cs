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
using System.Net;
using System.Net.Mail;

namespace Diagnostic_lab_Reporting_System
{
    public partial class Appointmentform : System.Web.UI.Page
    {
        string connetionString;
        SqlConnection con;
        SqlCommand com;
        SqlDataAdapter da = null;
        DataSet ds = null;
        int count;

        protected void Page_Load(object sender, EventArgs e)
        {


            connetionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\projectasp.net\Diagnostic lab Reporting System\Diagnostic lab Reporting System\App_Data\TestbookingDb.mdf;Integrated Security=True";
            con = new SqlConnection(connetionString);
            //ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


            txtAdate.Attributes["Max"] = DateTime.Now.ToString("dd-mm-yyyy");

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Max(Appointment_No)+1 from Book_Appointment", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtAno.Text = dr[0].ToString();
                    if (txtAno.Text == "")
                    {
                        txtAno.Text = "1";
                    }
                }
            }
            else
            {
                txtAno.Text = "1";
                return;
            }
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                DropDownList2.AutoPostBack = false;
                con.Open();
                if (IsPostBack)
                {

                    string tal = DropDownList1.SelectedItem.Value;
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add("Select Laboratory");


                    SqlCommand cmd = new SqlCommand("select * from Diagnostic_center_Details where Taluka='" + tal + "'", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    DropDownList2.DataSource = dt;
                    DropDownList2.DataBind();
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Exception in Binding Laboratory Dropdownlist :" + ex.Message.ToString());
            }

        }


       


        protected void btnBookapp_Click(object sender, EventArgs e)
        {
            string appointment_no, taluka, laboratory_name, laboratory_address, laboratory_contactno, patient_id, patient_name, contact_no, reason, appointment_date, appointment_time;
            appointment_no = txtAno.Text.Trim();
            taluka = DropDownList1.SelectedItem.Text.Trim();
            laboratory_name = DropDownList2.SelectedItem.Text.Trim();
            laboratory_address = txtLabaddress.Text.Trim();
            laboratory_contactno = txtLabcno.Text.Trim();
            patient_id = txtPid.Text.Trim();
            patient_name = txtPname.Text.Trim();
            contact_no = txtCno.Text.Trim();
            reason = txtReason.Text.Trim();
            appointment_date = txtAdate.Text.Trim();
            appointment_time = txtAtime.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Book_Appointment(Appointment_No,Taluka,Laboratory_Name,Laboratory_Address,Laboratory_Contactno,Patient_id,Patient_Name,Contact_No,Reason,Appointment_Date,Appointment_Time) values(@Appointment_No,@Taluka,@Laboratory_Name,@Laboratory_Address,@Laboratory_Contactno,@Patient_id,@Patient_Name,@Contact_No,@Reason, @Appointment_Date,@Appointment_Time)", con);
            cmd.Parameters.AddWithValue("@Appointment_No", appointment_no);
            cmd.Parameters.AddWithValue("@Taluka", taluka);
            cmd.Parameters.AddWithValue("@Laboratory_Name", laboratory_name);
            cmd.Parameters.AddWithValue("@Laboratory_Address", laboratory_address);
            cmd.Parameters.AddWithValue("@Laboratory_Contactno", laboratory_contactno);
            cmd.Parameters.AddWithValue("@Patient_Id", patient_id);
            cmd.Parameters.AddWithValue("@Patient_Name", patient_name);
            cmd.Parameters.AddWithValue("@Contact_No", contact_no);
            cmd.Parameters.AddWithValue("@Reason", reason);
            cmd.Parameters.AddWithValue("@Appointment_Date", appointment_date);
            cmd.Parameters.AddWithValue("@Appointment_Time", appointment_time);


            cmd.ExecuteNonQuery();
            con.Close();
            

            string lab_email = " ";
           
           
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(constr))
            //{

                    cmd = new SqlCommand("SELECT Laboratory_Email FROM Diagnostic_center_Details WHERE Laboratory_Name = @Laboratory_Name");

                    cmd.Parameters.AddWithValue("@Laboratory_Name", laboratory_name);
                    cmd.Connection = con;
                    con.Open(); 
                    SqlDataReader sdr = cmd.ExecuteReader();
                    {
                        if (sdr.Read())
                        {
                            lab_email = sdr["Laboratory_Email"].ToString();
                           
                        }
                    }
                    con.Close();
                    

            //}
            //if (!string.IsNullOrEmpty(password))
            //{
                        MailMessage mm = new MailMessage("harshadakhandare24@gmail.com", lab_email);
                        mm.Subject = "Patients appointment details";
                        mm.Body = string.Format("Hi {0},<br /><br />Patients appointment details are <br />Patient Name:{1}.<br />Contact no:{2}<br />Reason:{3}<br />Appointment Date:{4}<br />Appointment Time{5}<br />Thank You.", laboratory_name, patient_name, contact_no, reason, appointment_date, appointment_time);
                        mm.IsBodyHtml = true;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        NetworkCredential NetworkCred = new NetworkCredential();
                        NetworkCred.UserName = "harshadakhandare24@gmail.com";
                        NetworkCred.Password = "harshada2000";
                        smtp.UseDefaultCredentials = false;
                        smtp.Credentials = NetworkCred;
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.Send(mm);
                    
            }

            


     

        protected void btnReset_Click1(object sender, EventArgs e)
        {
            txtAno.Text = "";
            DropDownList1.SelectedItem.Text = "";
            DropDownList2.SelectedItem.Text = "";
            txtLabaddress.Text = "";
            txtLabcno.Text = "";
            txtPid.Text = "";
            txtPname.Text = "";
            txtCno.Text = "";
            txtReason.Text = "";
            txtAdate.Text = "";
            txtAtime.Text = "";

        }






        protected void btnShow_Click(object sender, EventArgs e)
        {
            DropDownList2.AutoPostBack = false;
            SqlCommand cmd;
            String str;
            string lab = DropDownList2.SelectedItem.Text.Trim();

            con.Open();
            str = "select Full_Address,Contact_No from Diagnostic_center_Details where Laboratory_Name = '" + lab + "'";
            cmd = new SqlCommand(str, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                txtLabaddress.Text = reader["Full_Address"].ToString();
                txtLabcno.Text = reader["Contact_No"].ToString();

                reader.Close();

            }
            con.Close();
        }

       

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/PatientLogin.aspx");
        }

        protected void btnShow_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd;
            String str;

            con.Open();

            str = "select Full_Name,Contact_no from Patient_Registration where Patient_Id = '" + txtPid.Text.Trim() + "'";
            cmd = new SqlCommand(str, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                txtPname.Text = reader["Full_Name"].ToString();
                txtCno.Text = reader["Contact_no"].ToString();

                reader.Close();
                con.Close();
            }
        }

       
       
        }
    }


