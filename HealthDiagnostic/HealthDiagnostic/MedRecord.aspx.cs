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
    public partial class MedRecord : System.Web.UI.Page
    {
        public string ConnectionString()
        {

            return ConfigurationManager.ConnectionStrings["HealthDB"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConnectionString());
                con.Open();
                SqlCommand cmd = new SqlCommand("Select PatientId from Patient where PatientName = '" + Session["Logged"] + "' ", con);
                int tempId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                LblPatId.Text = tempId.ToString();
            }


        }
        protected void BtnHomeMedRec_Click(object sender, EventArgs e)
        {
            Response.Redirect("MasterPage.aspx");
        }

        protected void BtnLogoutMedRec_Click(object sender, EventArgs e)
        {
            Session["Logged"] = null;
            Response.Redirect("LogIn.aspx");
        }

        protected void BtnAddProblem_Click(object sender, EventArgs e)
        {
            if (ChckBoxActiveProblem.Checked)
            {
                TxtProbEnd.Enabled = false;
                TxtProbEnd.Text = "01/01/1900";

            }
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            DateTime start = Convert.ToDateTime(TxtDateProbStart.Text);
            DateTime end = Convert.ToDateTime(TxtProbEnd.Text);
            SqlCommand cmd = new SqlCommand("Insert into PatientProblem (Description, StartDate, EndDate, PatientId) values('"+TxtProbDescription.Text+"','"+ start +"', '"+ end + "', '"+ LblPatId.Text + "')", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.ExecuteNonQuery();
            BindGridProblem();
            TxtProbDescription.Text = "";
            TxtDateProbStart.Text = "";
            ChckBoxActiveProblem.Checked = false;
            TxtProbEnd.Enabled = true;
            TxtProbEnd.Text = ""; 
        }

        protected void BtnViewProblem_Click(object sender, EventArgs e)
        {
            BindGridProblem();
        }
        public void BindGridProblem() {

            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * From PatientProblem where PatientId = '" + LblPatId.Text + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GrdProblem.DataSource = ds;
            GrdProblem.DataBind();

        }

        protected void GrdProblem_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label LblTest = GrdProblem.Rows[e.RowIndex].FindControl("Label5") as Label ;
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from PatientProblem where Id= @id1", con);
            cmd.Parameters.AddWithValue("@id1", LblTest.Text);
            cmd.ExecuteNonQuery();
            BindGridProblem();
        }
        protected void GrdProblem_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GrdProblem.EditIndex = e.NewEditIndex;
            GrdProblem.DataBind();
            BindGridProblem();
        }

        protected void GrdProblem_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label idcheck = (Label)GrdProblem.Rows[e.RowIndex].FindControl("Label5") as Label;
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Update PatientProblem SET Description = '" + ((TextBox)GrdProblem.Rows[e.RowIndex].FindControl("TextBox1")).Text + "', StartDate= '" + Convert.ToDateTime(((TextBox)GrdProblem.Rows[e.RowIndex].FindControl("TextBox2")).Text) + "' , EndDate = '" + Convert.ToDateTime(((TextBox)GrdProblem.Rows[e.RowIndex].FindControl("TextBox3")).Text) + "' where Id =  '" + Convert.ToInt32(idcheck.Text) + "' ", con);
            cmd.ExecuteNonQuery();
            GrdProblem.EditIndex = -1;
            BindGridProblem();
        }

        protected void BtnNewAllergy_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TxtAllergyName.Text))
            {
                TxtAllergyName.Text = "unknown";

            }
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into PatientAllergy(Name, AllergenCategory, AllergenReaction, PatientId) values ('" + TxtAllergyName.Text + "', '" + DrpdwnAllergy.SelectedValue.ToString() + "', '" + TxtAllergyReaction.Text + "', '" + LblPatId.Text + "')", con);
            cmd.ExecuteNonQuery();
            BindGridAllergy();
            TxtAllergyName.Text = "";
            DrpdwnAllergy.SelectedIndex = 0;
            TxtAllergyReaction.Text = "";
        }

        public void BindGridAllergy()
        {

            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * From PatientAllergy where PatientId = '" + LblPatId.Text + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridAllergy.DataSource = ds;
            GridAllergy.DataBind();

        }
        protected void GridAllergy_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label tstGrd = GridAllergy.Rows[e.RowIndex].FindControl("LblTryAllergy") as Label;
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand(" Delete from PatientAllergy where Id = @Id2 ", con);
            cmd.Parameters.AddWithValue("@Id2", tstGrd.Text);
            cmd.ExecuteNonQuery();
            BindGridAllergy();

        }
        protected void GridAllergy_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridAllergy.EditIndex = e.NewEditIndex;
            GridAllergy.DataBind();
            BindGridAllergy();
        }



        protected void GridAllergy_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label idchek = (Label)GridAllergy.Rows[e.RowIndex].FindControl("LblTryAllergy") as Label;
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Update PatientAllergy SET Name = '"+ ((TextBox)GridAllergy.Rows[e.RowIndex].FindControl("TextBox4")).Text + "', AllergenCategory= '" +((TextBox)GridAllergy.Rows[e.RowIndex].FindControl("TextBox5")).Text + "' , AllergenReaction = '"+((TextBox)GridAllergy.Rows[e.RowIndex].FindControl("TextBox6")).Text+ "' where Id =  '"+ Convert.ToInt32(idchek.Text) + "' ", con);
            cmd.ExecuteNonQuery();
            GridAllergy.EditIndex = -1;
            BindGridAllergy();
        }

        protected void BtnViewAllergy_Click(object sender, EventArgs e)
        {
            BindGridAllergy();
        }
        public void BindTest() {

            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * From PatientTestProcedure where PatientId = '" + LblPatId.Text + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GrdTestProceedure.DataSource = ds;
            GrdTestProceedure.DataBind();

        }

        protected void DrpTypeTest_SelectedIndexChanged(object sender, EventArgs e)
        {

            var go = sender as DropDownList;
            PerformIndexChangedAction(go);

        }
        public void PerformIndexChangedAction(DropDownList go)
        {
            var temp = go.SelectedItem.Value;
            if (temp == "Blood")
            {
                
                DrpDownBloodType.Visible = true;
           
            }
            else
            {
                DrpDownBloodType.Visible = false;
            }
        }

        protected void DrpDownBloodType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            LblgoBlood.Text = DrpDownBloodType.SelectedItem.Value;
        }
        protected void BtnAddTest_Click(object sender, EventArgs e)
        {
            var typeval = "";
            var val = "";
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            if (String.IsNullOrEmpty(LblgoBlood.Text) && DrpDownBloodType.Visible) 
            {
                typeval = DrpDownBloodType.Items[0].Value;
                SqlCommand cd = new SqlCommand("Select Value from Blood_Test where Name = '" + typeval + "'", con);
                val = cd.ExecuteScalar().ToString();
               
            }
            else if(!String.IsNullOrEmpty(LblgoBlood.Text))
            {
                typeval = LblgoBlood.Text;

                SqlCommand cd = new SqlCommand("Select Value from Blood_Test where Name = '" + typeval + "'", con);
                val = cd.ExecuteScalar().ToString();

            }
            else {
                typeval = DrpTypeTest.SelectedItem.Value;
                val = "I would confirm";
            }
            LblNormalVal.Text = val;
            
            SqlCommand cmd = new SqlCommand("Insert into PatientTestProcedure (Type, Value, Date, Normal_Value, PatientId) values('" + typeval + "','" + TxtValTest.Text + "','" + TxtDateTest.Text + "', '"+ LblNormalVal.Text + "','" + LblPatId.Text + "')", con);
     
            cmd.ExecuteNonQuery();
            BindTest();

            DrpTypeTest.SelectedIndex = 0; 
            DrpDownBloodType.Visible = false;
            TxtValTest.Text = "";
            TxtDateTest.Text = "";
            LblNormalVal.Text = "";
            
        }

        protected void BtnViewTest_Click(object sender, EventArgs e)
        {
            BindTest();
        }

        protected void GrdTestProceedure_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GrdTestProceedure.EditIndex = e.NewEditIndex;
            GrdTestProceedure.DataBind();
            BindTest();
        }

        protected void GrdTestProceedure_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label idchek = (Label)GrdTestProceedure.Rows[e.RowIndex].FindControl("Label10") as Label;
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Update PatientTestProcedure SET Type = '" + ((TextBox)GrdTestProceedure.Rows[e.RowIndex].FindControl("TextBox7")).Text + "', Value= '" + ((TextBox)GrdTestProceedure.Rows[e.RowIndex].FindControl("TextBox8")).Text + "' , Date = '" + ((TextBox)GrdTestProceedure.Rows[e.RowIndex].FindControl("TextBox9")).Text + "' where Id =  '" + Convert.ToInt32(idchek.Text) + "' ", con);
            cmd.ExecuteNonQuery();
            GrdTestProceedure.EditIndex =-1;
            BindTest();
        }

        protected void GrdTestProceedure_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label tstGrd = GrdTestProceedure.Rows[e.RowIndex].FindControl("Label10") as Label;
            SqlConnection con = new SqlConnection(ConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand(" Delete from PatientTestProcedure where Id = @Id2 ", con);
            cmd.Parameters.AddWithValue("@Id2", tstGrd.Text);
            cmd.ExecuteNonQuery();
            BindTest();
        }

        protected void BtnReportMed_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientReportPage.aspx");
        }

        protected void BtnPatPageMedRec_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientPage.aspx");
        }
    }
}