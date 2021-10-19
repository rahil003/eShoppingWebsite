using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace eShoppingWebsite
{
    public partial class ViewProduct : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                if (true)
                {
                    string mainconn = ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString;
                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "select * from ItemMst";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlconn.Open();
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = sqlcomm;
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                    sqlconn.Close();
                }
                else
                {

                Response.Redirect("Login_User.aspx");
                }
            }
            catch(Exception ex)
            {

            }

        }

  
       
    }
}