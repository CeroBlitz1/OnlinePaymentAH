using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePaymentMode
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["BillPayment"].ToString();
                con = new SqlConnection(strcon);
                con.Open();
                cmd = new SqlCommand("insert into customertbl values (@Name,@MobileNumber,@EmailId,@Address,@BankName,@AccountNumber,@BankAddress,@Password)", con);
                cmd.Parameters.AddWithValue("@Name", Name.Text);
                cmd.Parameters.AddWithValue("@MobileNumber", mobilenum.Text);
                cmd.Parameters.AddWithValue("@EmailId", eid.Text);
                cmd.Parameters.AddWithValue("@Address", address.Text);
                cmd.Parameters.AddWithValue("@BankName", bankname.Text);
                cmd.Parameters.AddWithValue("@AccountNumber", AccNum.Text);
                cmd.Parameters.AddWithValue("@BankAddress", BankAddress.Text);
                cmd.Parameters.AddWithValue("@Password", pwd.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration Successfully Completed')", true);
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Account Number alresdy registered')", true);
            }
           
        }
    }
}