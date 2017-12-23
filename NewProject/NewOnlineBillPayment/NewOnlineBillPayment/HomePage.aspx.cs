using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace NewOnlineBillPayment
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public Student GetStudentbyID(int studentID)
        {
            Student std = new Student();
            string cs = ConfigurationManager.ConnectionStrings["TestDataBase"].ConnectionString;
            using (SqlConnection conn  = new SqlConnection(cs)) ;
            {
                SqlCommand cmd = new SqlCommand("getStudent");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@id",
                        Value = ID
                    });
                
                 /*Trying to do this demo Ajax.Please Dont mind im trying to create a method to get data 
                  * i will figure it out im too sleepy right now thats why im uploading this work done
                  * will complete this demo by tommorow for sure. please bare with me T_T
                  
                



            }

        }
    }
}