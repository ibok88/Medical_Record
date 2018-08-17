using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.Reporting.WebForms;


namespace HealthDiagnostic
{
    public partial class PatientReportPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                ShowReport();
                SqlConnection con = new SqlConnection(ConnectionString());
                con.Open();

            }
                          

        }
        public string ConnectionString() {


            return ConfigurationManager.ConnectionStrings["HealthDB"].ToString();
        }
        private void ShowReport()
        {
            ReportViewerPatientMed.Reset();
            ReportDataSource getpatient = new ReportDataSource("DataSet1", GetPatientInfo());
            ReportDataSource getproblem = new ReportDataSource("DataSetProblem", GetPatientProblem());
            ReportDataSource getallergy = new ReportDataSource("DataSetAllergy", GetPatientAllergy());
            ReportDataSource gettest = new ReportDataSource("DataSetTestProcedure", GetPatientTestProcedure());
            ReportDataSource getmed = new ReportDataSource("DataSetMedicine", GetPatientMedicine());

     
            ReportViewerPatientMed.LocalReport.DataSources.Add(getpatient);
            ReportViewerPatientMed.LocalReport.DataSources.Add(getproblem);
            ReportViewerPatientMed.LocalReport.DataSources.Add(getallergy);
            ReportViewerPatientMed.LocalReport.DataSources.Add(gettest);
            ReportViewerPatientMed.LocalReport.DataSources.Add(getmed);

            ReportViewerPatientMed.LocalReport.ReportPath = "PatientReport.rdlc";

            ReportViewerPatientMed.LocalReport.Refresh();
        }

        private DataTable GetPatientInfo()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select PatientId from Patient where PatientName = '" + Session["Logged"] + "' ", con);
            int tempId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            SqlCommand cmd2 = new SqlCommand("Select PatientName, PatientSurname, PatientEmail, PatientGender, PatientDOB, PatientNationality, PatientImage  FROM Patient where PatientId = '" + tempId + "'", con);
            
            SqlDataReader sdr = cmd2.ExecuteReader();
            
            dt.Load(sdr);

            return dt;
        }

        private DataTable GetPatientProblem()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select PatientId from Patient where PatientName = '" + Session["Logged"] + "' ", con);
            int tempId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            SqlCommand cmd2 = new SqlCommand("Select Description, StartDate, EndDate from PatientProblem where PatientId = '" + tempId + "'", con);
           
            
            SqlDataReader sdr = cmd2.ExecuteReader();
            
            dt.Load(sdr);

            return dt;
        }
        private DataTable GetPatientAllergy()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select PatientId from Patient where PatientName = '" + Session["Logged"] + "' ", con);
            int tempId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            SqlCommand cmd2 = new SqlCommand("Select Name, AllergenCategory, AllergenReaction from PatientAllergy where PatientId = '" + tempId + "'", con);
            SqlDataReader sdr = cmd2.ExecuteReader();
           
            dt.Load(sdr);

            return dt;
        }
        private DataTable GetPatientTestProcedure()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select PatientId from Patient where PatientName = '" + Session["Logged"] + "' ", con);
            int tempId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            SqlCommand cmd2 = new SqlCommand("Select Type, Value, Date, Normal_Value from PatientTestProcedure where PatientId = '" + tempId + "'", con);
            SqlDataReader sdr = cmd2.ExecuteReader();
            
            dt.Load(sdr);

            return dt;
        }
        private DataTable GetPatientMedicine()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select PatientId from Patient where PatientName = '" + Session["Logged"] + "' ", con);
            int tempId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            SqlCommand cmd2 = new SqlCommand("Select Name, Direction, DateStart, DateDue  from PatientMedicine where PatientId = '" + tempId + "'", con);
            SqlDataReader sdr = cmd2.ExecuteReader();
         
            dt.Load(sdr);

            return dt;
        }

    }
}