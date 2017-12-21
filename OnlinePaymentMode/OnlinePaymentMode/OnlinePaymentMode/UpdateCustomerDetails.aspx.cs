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
    public partial class UpdateCustomerDetails : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            string EmailId = Session["EmailId"].ToString();
            eid.Text = EmailId;
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
            SqlCommand myCommand = new SqlCommand("select * from customertbl where EmailId='" + eid.Text + "'", con);

            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                Name.Text = (myReader["Name"].ToString());
                mobilenum.Text = (myReader["MobileNumber"].ToString());
            
             
                address.Text = (myReader["Address"].ToString());
                bankname.Text = (myReader["BankName"].ToString());
                AccNum.Text = (myReader["AccountNumber"].ToString());
                BankAddress.Text = (myReader["BankAddress"].ToString());
                pwd.Text = (myReader["Password"].ToString());
               
            }
            con.Close();
        }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            try
           {
                string strcon = ConfigurationManager.ConnectionStrings["BillPayment"].ToString();
                con = new SqlConnection(strcon);
                con.Open();
                cmd = new SqlCommand("Update customertbl set Name=@Name,MobileNumber=@MobileNumber,Address=@Address,BankName=@BankName,AccountNumber=@AccountNumber,BankAddress=@BankAddress,Password=@Password where EmailId='"+eid.Text+"'", con);
                cmd.Parameters.AddWithValue("@Name", Name.Text);
                cmd.Parameters.AddWithValue("@MobileNumber", mobilenum.Text);
              
                cmd.Parameters.AddWithValue("@Address", address.Text);
                cmd.Parameters.AddWithValue("@BankName", bankname.Text);
                cmd.Parameters.AddWithValue("@AccountNumber", AccNum.Text);
                cmd.Parameters.AddWithValue("@BankAddress", BankAddress.Text);
                cmd.Parameters.AddWithValue("@Password", pwd.Text);
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