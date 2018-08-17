using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace HealthDiagnostic
{
    public partial class Expert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string ConnectionString() {

            return ConfigurationManager.ConnectionStrings["HealthDB"].ToString();

        }

        protected void BtnExpSave_Click(object sender, EventArgs e)
        {
            string temp = "";
            if (FileUploadExpert.HasFile) {

                FileUploadExpert.SaveAs(MapPath("~/pic/" + FileUploadExpert.FileName));
            }
            temp = "~/pic/" + FileUploadExpert.FileName;

            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            if (DrdExpSpecialization.SelectedIndex == 0)
            {

                SqlCommand cmdfirst = new SqlCommand("Select Id from Expert where Occupation = '" + DrdExpSpecialization.SelectedValue.ToString() + "'", con);
                LblSpecialId.Text = cmdfirst.ExecuteScalar().ToString();

            }
            SqlCommand cmd = new SqlCommand("Insert into ExpertRegistration (ExpertName, ExpertSurname,ExpertEmail, ExpertSpecialization, ExpertUserName, ExpertPassword,ExpertLocation, Image, Id) values('"+ TxtExpName.Text + "','" + TxtExpSurname.Text + "','" + TxtEmail.Text + "','" + DrdExpSpecialization.SelectedValue.ToString() + "','" + TxtExpUsName.Text + "','" + TxtExpPass.Text + "','" + DrdLocation.SelectedValue.ToString() + "','" + temp + "','" + Convert.ToInt16(LblSpecialId.Text) + "' )", con);
            cmd.ExecuteNonQuery();

            Response.Write("Thanks for the Registration, you may now log In");
            TxtExpName.Text = "";
            TxtExpSurname.Text = "";
            TxtEmail.Text = "";
            DrdExpSpecialization.SelectedIndex = 0;
            TxtExpUsName.Text = "";
            TxtExpPass.Text = "";
            DrdLocation.SelectedIndex = 0;
            LblSpecialId.Text = "";

        }

        protected void DrdExpSpecialization_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            
            SqlCommand cmd = new SqlCommand("Select Id from Expert where Occupation = '"+ DrdExpSpecialization.SelectedValue.ToString()+"'", con);
            LblSpecialId.Text = cmd.ExecuteScalar().ToString();
        }

        protected void BtnHomeExpert_Click(object sender, EventArgs e)
        {
            Response.Redirect("MasterPage.aspx");
        }
    }
}