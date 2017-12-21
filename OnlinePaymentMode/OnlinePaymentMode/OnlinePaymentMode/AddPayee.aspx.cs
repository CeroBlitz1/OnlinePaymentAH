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
    public partial class AddPayee : System.Web.UI.Page  
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        string EmailId;
        protected void Page_Load(object sender, EventArgs e)
        {
            EmailId = Session["EmailId"].ToString();
        }

        protected void btnreg_Click(object sender, EventArgs e)//testcommmet
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["BillPayment"].ToString();//test 2
                con = new SqlConnection(strcon);
                con.Open();
                cmd = new SqlCommand("insert into payeetbl values (@CEid,@Name,@MobileNumber,@EmailId,@AccountNumber,@BankName,@BankAddress)", con);
                cmd.Parameters.AddWithValue("@CEid", EmailId);
                cmd.Parameters.AddWithValue("@Name", Name.Text);
                cmd.Parameters.AddWithValue("@MobileNumber", mobilenum.Text);
                cmd.Parameters.AddWithValue("@EmailId", eid.Text);
                cmd.Parameters.AddWithValue("@AccountNumber", AccNum.Text);
                cmd.Parameters.AddWithValue("@BankName", bankname.Text);
                cmd.Parameters.AddWithValue("@BankAddress", BankAddress.Text);
             
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Payee Successfully Registered')", true);
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Payee already registered')", true);
            }
        }
    }
}