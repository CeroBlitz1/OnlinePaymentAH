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
    public partial class Payment : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        string cid;
        protected void Page_Load(object sender, EventArgs e)
        {
            cid = Session["EmailId"].ToString();
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {


            try
            {


                string strcon = ConfigurationManager.ConnectionStrings["BillPayment"].ToString();
                con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("select EmailId,AccountNumber from payeetbl where EmailId='" + Payeeid.Text+"' and AccountNumber='"+AccNum.Text+"' ", con);
                
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    con = new SqlConnection(strcon);
                    con.Open();
                    cmd = new SqlCommand("insert into Paymenttbl values (@cid,@pid,@BankName,@AccountNumber,@Name,@amt,@date)", con);
                    cmd.Parameters.AddWithValue("@cid", cid);
                    cmd.Parameters.AddWithValue("@pid", Payeeid.Text);
                    cmd.Parameters.AddWithValue("@BankName", bankname.Text);
                    cmd.Parameters.AddWithValue("@AccountNumber", AccNum.Text);
                    cmd.Parameters.AddWithValue("@Name", Name.Text);
                    cmd.Parameters.AddWithValue("@amt", Amount.Text);
                    cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Transaction Successfully Completed')", true);
                    Payeeid.Text = bankname.Text = AccNum.Text = Name.Text = Amount.Text = "";
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Add Payee Details first..')", true);
                }

               
            }
            catch(Exception x)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error..plz try again..')", true);
            }
        }
    }
}