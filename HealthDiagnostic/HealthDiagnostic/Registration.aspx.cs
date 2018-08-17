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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       


        protected void BtnSave_Click(object sender, EventArgs e)
        {
            var temp = "";
            if (FileUploadPatientReg.HasFile)
            {
                FileUploadPatientReg.SaveAs(MapPath("~/pic/" + FileUploadPatientReg.FileName));
            }
            temp = "~/pic/" + FileUploadPatientReg.FileName;
            //DateTime ddate = DateTime.Parse("TxtDOB.Text");  
           
            HealthBusiness phb = new HealthBusiness();
            phb.InsertPatient(TxtName.Text, TxtSurname.Text, TxtEmail.Text, DrpDwnGender.SelectedValue.ToString(), Convert.ToDateTime(TxtDOB.Text), DrpdwnResidence.SelectedValue.ToString(), TxtUserName.Text, TxtPass.Text, DrpdwnNation.SelectedValue.ToString(), temp);

            TxtName.Text = "";
            TxtSurname.Text = "";
            TxtEmail.Text = "";
            DrpDwnGender.SelectedValue = "";
            TxtDOB.Text = "";
            DrpdwnResidence.SelectedValue = "";
            TxtUserName.Text = "";
            TxtPass.Text = "";
            DrpdwnNation.SelectedValue = "";
            

            var mypost = "Successfully completed your registration";
            ClientScript.RegisterStartupScript(this.GetType(), "prompt", "alert('"+ mypost  + "');", true);
            


        }

        protected void BtnHomePatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("MasterPage.aspx");
        }
    }
}