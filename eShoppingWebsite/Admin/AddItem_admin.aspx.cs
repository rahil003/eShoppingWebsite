using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;

namespace eShoppingWebsite.Admin
{
    public partial class AddItem_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    BindCategory();
                }
            }
            else
            {
                Response.Redirect("/Login_User.aspx");
            }
        }

        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString;
        }

        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            if (IsFormValidate())
            {
                FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
                SqlConnection con = new SqlConnection(GetConnectionString());
                SqlCommand cmd = new SqlCommand("insert into ItemMst(IName,Detail,Price,Image,Qnt,CName,EntryDate,Size) values(@NAME,@DETAIL,@PRICE,@IMg,@qnt,@CNAME,getdate(),@Size)", con);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.Parameters.AddWithValue("@NAME", txtItemName.Text);
                cmd.Parameters.AddWithValue("@DETAIL", txtDesc.Text);
                cmd.Parameters.AddWithValue("@PRICE", Convert.ToDouble(txtPrice.Text));
                cmd.Parameters.AddWithValue("@IMg", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@qnt", Convert.ToInt32(txtQty.Text));
                cmd.Parameters.AddWithValue("@CNAME", ddlCategory.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@size", ddlsize.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Item added successfully');</script>");


            }
            else
            {
                Response.Write("<script>alert('Validation Error');</script>");
            }
        }

        private bool IsFormValidate()
        {
            if (txtItemName.Text == string.Empty)
            {
                Response.Write("<script>alert('Item name is Required');</script>");
                txtItemName.Text = string.Empty;
                txtItemName.Focus();
                return false;
            }

            if (txtDesc.Text == string.Empty)
            {
                Response.Write("<script>alert('Description details is Required');</script>");
                txtDesc.Text = string.Empty;
                txtDesc.Focus();
                return false;
            }

            if (txtPrice.Text == string.Empty)
            {
                Response.Write("<script>alert('Price details is Required');</script>");
                txtPrice.Text = string.Empty;
                txtPrice.Focus();
                return false;
            }

            if (txtQty.Text == string.Empty)
            {
                Response.Write("<script>alert('Quantity is Required');</script>");
                txtQty.Text = string.Empty;
                txtQty.Focus();
                return false;
            }

            if (ddlCategory.SelectedItem.Text == "")
            {
                Response.Write("<script>alert('Category is Required');</script>");

                ddlCategory.Focus();
                return false;
            }

            if (ddlsize.SelectedIndex == -1)
            {
                Response.Write("<script>alert('Size is Required');</script>");

                ddlsize.Focus();
                return false;
            }

            return true;
        }


        private void BindCategory()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("select distinct CID,CName from CateMst", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CName";
                ddlCategory.DataValueField = "CID";
                ddlCategory.DataBind();
            }
            else
            {
                ddlCategory.DataSource = null;
                ddlCategory.DataBind();

            }
        }

    }
}