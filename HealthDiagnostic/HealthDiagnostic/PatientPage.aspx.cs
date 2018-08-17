using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace HealthDiagnostic
{
    public partial class PatientPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                Lblidentity.Text = "Welcome:"+" " + Session["Logged"];
            
        }

        public string ConnectionString() {

            return ConfigurationManager.ConnectionStrings["HealthDB"].ToString();

        }
        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session["Logged"] = null;
            Response.Redirect("LogIn.aspx");

        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("MasterPage.aspx");
        }

       
        protected void BtnDiagnosisPatient_Click(object sender, EventArgs e)
        {
            
            
                
                FormViewDiagnosis.Visible = true;
                DetailsViewAcctInfo.Visible = false;
                SqlConnection con = new SqlConnection(ConnectionString());
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Patient where PatientName = '" + Session["Logged"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                FormViewDiagnosis.DataSource = ds;
                FormViewDiagnosis.DataBind();
                
            
        }

        protected void BtnTest_Click(object sender, EventArgs e)
        {
            
                FormViewDiagnosis.Visible = false;
                
           
        }

        protected void BtnAccountInfo_Click(object sender, EventArgs e)
        {
               FormViewDiagnosis.Visible = false;
               
               DetailsViewAcctInfo.Visible = true;
               SqlConnection con = new SqlConnection(ConnectionString());
               con.Open();
               SqlCommand cmd = new SqlCommand("Select * from Patient where PatientName = '" + Session["Logged"] + "'", con);
               SqlDataAdapter da = new SqlDataAdapter(cmd);
               DataSet ds = new DataSet();
               da.Fill(ds);
               DetailsViewAcctInfo.DataSource = ds;
               DetailsViewAcctInfo.DataBind();
            
        }
        protected void BtnPatUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Patient  where PatientName = '" + Session["Logged"] + "' Set PatientName = @pname ,PatientSurname= @psname, PatientEmail=@pemail, PatientGender=@pgender, PatientDOB=@pdob, PatientCOR=@pcor, PatientUserName=@pusname, PatientPassword=@ppass, PatientNationality=@pnationality ", con);
            cmd.Parameters.AddWithValue("@pname", "PatientName");
            cmd.Parameters.AddWithValue("@psname", "PatientSurname");
            cmd.Parameters.AddWithValue("@pemail", "PatientEmail");
            cmd.Parameters.AddWithValue("@pgender", "PatientGender");
            cmd.Parameters.AddWithValue("@pdob", "PatientDOB");
            cmd.Parameters.AddWithValue("@pcor", "PatientCOR");
            cmd.Parameters.AddWithValue("@pusname", "PatientUserName");
            cmd.Parameters.AddWithValue("@ppass", "PatientPassword");
            cmd.Parameters.AddWithValue("@pnationality", "PatientPassword");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.ExecuteNonQuery();

        }

        protected void BtnMedRec_Click(object sender, EventArgs e)
        {
            FormViewDiagnosis.Visible = false;
            
            Response.Redirect("MedRecord.aspx");
        }

 
        protected void BtnMeetExpert_Click(object sender, EventArgs e)
        {
            DetailsViewAcctInfo.Visible = false;
            DrpDwnPatExpert.Visible = true;
        }

       
        protected void BtnSymptom_Click(object sender, EventArgs e)
        {
            Diagnosis getDiagnosis = new Diagnosis();
            TextBox symptomPatient = (TextBox)FormViewDiagnosis.FindControl("TxtSymtom");
            Label diagnosisPatientLbl = (Label)FormViewDiagnosis.FindControl("LblDiagnosis");
            string[] patientSymptom = new string[10];
            int match = 0;

            //List<string> getsymptoms = new List<string>();

            if (!string.IsNullOrEmpty(symptomPatient.Text))
            {
                patientSymptom = symptomPatient.Text.Split(' ');


            }
            else
            {
                Response.Write("Please write some symptoms");
            }

            foreach (DictionaryEntry symptom in getDiagnosis.DiagnosisList())
            {
                IEnumerable<string> symptomvalues = (IEnumerable<string>)symptom.Value;
                foreach (string symptomValue in symptomvalues)
                {
                    foreach (string patSymptomInput in patientSymptom)
                    {
                        if (patSymptomInput == symptomValue)
                        {
                            match += 1;
                        }
                    }

                }
                if (match > 3)
                {
                    diagnosisPatientLbl.Text = symptom.Key.ToString();
                    symptomPatient.Text = "";
                }
                else
                {
                    diagnosisPatientLbl.Text = "Sorry, We can not find the diagnosis";
                    symptomPatient.Text = "";
                }
            }
        }
    }
}