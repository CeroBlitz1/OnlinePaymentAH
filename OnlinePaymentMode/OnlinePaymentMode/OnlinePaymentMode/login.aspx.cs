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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin@gmail.com" && TextBox2.Text == "admin")
            {
                Server.Transfer("admin.aspx");
            }
            else
            {
                string strcon = ConfigurationManager.ConnectionStrings["BillPayment"].ToString();
                con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("select EmailId,Password from customertbl where EmailId=@EmailId and Password=@Password", con);
                cmd.Parameters.AddWithValue("@EmailId", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["EmailId"] = TextBox1.Text;
                    Server.Transfer("Home.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Correct Details..')", true);
                }
            }
        }
    }
}