using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;


namespace Diagnostic_lab_Reporting_System
{
    public partial class patientforgetpassword : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        { 
           string username = " " ;
           string password = " " ;
           string constr = ConfigurationManager.ConnectionStrings["TestbookingDbConnectionString"].ConnectionString;
           using (SqlConnection con = new SqlConnection(constr))
               {
                    using (SqlCommand cmd = new SqlCommand("SELECT Username, Password FROM Patient_Registration WHERE Email_id = @Email_id"))
                      {
                               cmd.Parameters.AddWithValue("@Email_id", txtemail.Text.Trim());
                               cmd.Connection = con;
                               con.Open();
                               using (SqlDataReader sdr = cmd.ExecuteReader())
                                    {
                                        if (sdr.Read())
                                         {
                                           username = sdr["Username"].ToString();
                                           password = sdr["Password"].ToString();
                                         }   
                                    }
                              con.Close();
                      }
               } 
                                   if (!string.IsNullOrEmpty(password))
                                        {
                                               MailMessage mm= new MailMessage("harshadakhandare24@gmail.com", txtemail.Text.Trim());
                                               mm.Subject = "Password Recovery";
                                               mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
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
                                               lbltxt.Visible = true;
                                               lbltxt.ForeColor = Color.Green;
                                               lbltxt.Text = "Password has been sent to your email address.";
                                              
                                        }

                                 else
                                       {
                                         lbltxt.ForeColor = Color.Red;
                                         lbltxt.Text = "This email address does not match our records.";
                                       }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }


           
    }

}
            

 
     


  
        
    

       
        

        
        
        
        


       
           
        

       
    
