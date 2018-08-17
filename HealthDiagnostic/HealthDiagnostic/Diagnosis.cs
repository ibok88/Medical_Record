using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HealthDiagnostic
{
    public class Diagnosis
    {
        

                
        public string[] malSymptoms = new string[7];
        public Hashtable diagnosis = new Hashtable();
        public Hashtable DiagnosisList()
        {

            malSymptoms[0] = "fever";
            malSymptoms[1] = "sweat";
            malSymptoms[2] = "chills";
            malSymptoms[3] = "vomit";
            malSymptoms[4] = "muscle pains";


            
            diagnosis["malaria"] = malSymptoms;

            return diagnosis;

        }
    }
}