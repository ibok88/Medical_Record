using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace HealthDiagnostic
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string ConnectionString() {

            return ConfigurationManager.ConnectionStrings["HealthDB"].ToString();


        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(TxtUsnameLogin.Text)){
                SqlConnection con = new SqlConnection(ConnectionString());
                con.Open();
                //Check if user is available 
                SqlCommand cmd = new SqlCommand("Select count(*) from Patient where PatientUserName = '" + TxtUsnameLogin.Text + "'", con);
                SqlCommand cmdname = new SqlCommand("Select PatientName from Patient where PatientUserName = '" + TxtUsnameLogin.Text + "'", con);
                string name =  cmdname.ExecuteScalar().ToString();
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    SqlCommand cmdpasss = new SqlCommand("Select PatientPassword from Patient where PatientUserName = '" + TxtUsnameLogin.Text + "'", con);
                    string password = cmdpasss.ExecuteScalar().ToString().Replace(" ", "");

                    if (password == TxtPasslogin.Text)
                    {

                        Session["Logged"] = name;
                        Response.Redirect("PatientPage.aspx");


                    }
                    else
                    {
                        Response.Write("Please enter correct Password");
                        TxtPasslogin.Text = "";
                    }
                }
                else {

                    Response.Write("Please Username does not exist. Check Username or SignUp!");
                    TxtUsnameLogin.Text = "";
                    TxtPasslogin.Text = "";

                }

            }
            else {

                Response.Write("Please enter a User Name ");


            }
        }

        protected void BtHomeLog_Click(object sender, EventArgs e)
        {
            Response.Redirect("MasterPage.aspx");
        }
    }
}