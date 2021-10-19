﻿using System;
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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Registration();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            
        }

        private void Registration()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);

                SqlCommand cmd = new SqlCommand("Insert into tblUserMaster(Name,Surname,Address,City,Pincode,Mobile,Email,Password,Gender,EntryDate) values(@Name,@Surname,@Address,@City,@Pincode,@Mobile,@Email,@Password,@Gender,GETDATE())", con);

                Console.WriteLine("after cmd");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@Surname", txtSurname.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@Pincode", txtPincode.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtpass.Text);

                cmd.Parameters.AddWithValue("@Gender", ddlGender.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                clr();
                Response.Write("<script>alert('Success')</script>");



            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "')</script>");
            }
        }

        private void clr()
        {
            txtname.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtPincode.Text = string.Empty;
            txtMobile.Text = string.Empty;
            txtEmail.Text = string.Empty;
            ddlGender.SelectedIndex = -1;
            txtDate.Text = string.Empty;
            txtname.Focus();
        }

    }
}