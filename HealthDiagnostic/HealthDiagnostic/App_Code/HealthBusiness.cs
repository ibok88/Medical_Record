using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace HealthDiagnostic
{
    internal class HealthBusiness
    {
        public void InsertPatient(string name, string surname, string email, string gender, DateTime dob, string cor, string username, string password, string nationality, string image)
        {


            HealthData phd = new HealthData();
            phd.InsertPatient(name, surname, email, gender, dob, cor, username, password, nationality, image);



        }

        public DataSet DisplayPatient() {

            HealthData hdp = new HealthData();
            DataSet ds = new DataSet();
            ds = hdp.DisplayPatient();
            return ds;
        }
    }
}