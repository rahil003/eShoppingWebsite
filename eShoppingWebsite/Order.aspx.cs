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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            try
            {
                if (Session["UserName"] != null)
                {
                    string mainconn = ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString;
                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);

                    string sqlquery = "select * from ItemMst where IID='" + PID + "'";

                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlconn.Open();

                   

                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = sqlcomm;
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();

                    SqlDataReader reader = sqlcomm.ExecuteReader();
                    reader.Read();
                    Name.Text = "<h2>Hey! " + Session["UserName"] + "  Place Your Order</h2> ".ToString();


                    sqlconn.Close();
                }
                else
                {

                    Response.Redirect("Login_User.aspx");
                }
            }
            catch (Exception ex)
            {

            }
        }


        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        private void clr()
        {
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);

                SqlCommand cmd = new SqlCommand("Insert into OrderUser(Pid,Name,Mobile,HouseNo,Area,City,State,Pincode) values(@Pid,@Name,@Mobile,@HouseNo,@Area,@City,@State,@Pincode)", con);
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                cmd.Parameters.AddWithValue("@Pid", PID);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@HouseNo", txtHouse.Text);
                cmd.Parameters.AddWithValue("@Area", txtArea.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@State", txtState.Text);
                cmd.Parameters.AddWithValue("@Pincode", txtPincode.Text);


                cmd.ExecuteNonQuery();
                con.Close();
                clr();
                Response.Write("<script>alert('Order Placed Successfully !!! ')</script>");



            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "')</script>");
            }
        }
    }
}