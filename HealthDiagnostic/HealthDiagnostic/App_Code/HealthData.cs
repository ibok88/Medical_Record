using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace HealthDiagnostic
{
    internal class HealthData
    {
        public string ConnectionStringPatient()
        {

            return ConfigurationManager.ConnectionStrings["HealthDB"].ToString();

        }
        public void InsertPatient(string name, string surname, string email, string gender, DateTime dob, string cor, string username, string password, string nationality, string image)
        {
            SqlConnection con = new SqlConnection(ConnectionStringPatient());
            con.Open();
            SqlCommand cmd = new SqlCommand("InsertPatient", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@surname", surname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@COR", cor);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@nationality", nationality);
            cmd.Parameters.AddWithValue("@patientimage", image);

            cmd.ExecuteNonQuery();


        }

       public DataSet DisplayPatient() {
            SqlConnection con = new SqlConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * From Patient ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;


        }

       
    }
}