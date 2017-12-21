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
    public partial class transaction : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        string EmailId;
        protected void Page_Load(object sender, EventArgs e)
        {
            EmailId = Session["EmailId"].ToString();
            string strcon = ConfigurationManager.ConnectionStrings["BillPayment"].ToString();
            con = new SqlConnection(strcon);
            con.Open();



            cmd = new SqlCommand("select AccountNumber,Name,Amount,Date from paymenttbl where customerid='" + EmailId + "'", con);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl");
            GridView1.DataSource = ds.Tables["tbl"];
            GridView1.DataBind();
        }
    }
}