using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePaymentMode
{
    public partial class UpdatePayee : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        string EmailId;
        string peid;
        protected void Page_Load(object sender, EventArgs e)
        {
            EmailId = Session["EmailId"].ToString();
            peid = Session["eid"].ToString();
            if (!IsPostBack)
            {
                data();
            }
        }
        public void data()
        {
            string strcon = ConfigurationManager.ConnectionStrings["BillPayment"].ToString();
            con = new SqlConnection(strcon);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("select Name,MobileNumber,EmailId,AccountNumber,BAnkName,BankAddress from payeetbl where CEID='" + EmailId + "' and Emailid='" + peid + "'", con);

            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                Name.Text = (myReader["Name"].ToString());
                mobilenum.Text = (myReader["MobileNumber"].ToString());


                eid.Text = (myReader["EmailId"].ToString());
                AccNum.Text = (myReader["AccountNumber"].ToString());
                bankname.Text = (myReader["BAnkName"].ToString());
                BankAddress.Text = (myReader["BankAddress"].ToString());


            }
            con.Close();
        }

        protected void btnupdt_Click(object sender, EventArgs e)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["BillPayment"].ToString();
                con = new SqlConnection(strcon);
                con.Open();
                cmd = new SqlCommand("Update payeetbl set Name=@Name,MobileNumber=@MobileNumber,BankName=@BankName,AccountNumber=@AccountNumber,BankAddress=@BankAddress where EmailId='" + peid + "'", con);
                cmd.Parameters.AddWithValue("@Name", Name.Text);
                cmd.Parameters.AddWithValue("@MobileNumber", mobilenum.Text);
                cmd.Parameters.AddWithValue("@BankName", bankname.Text);
                cmd.Parameters.AddWithValue("@AccountNumber", AccNum.Text);
                cmd.Parameters.AddWithValue("@BankAddress", BankAddress.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Details Updated Successfully ')", true);
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Update not completed,....')", true);
            }
        }
    }
}