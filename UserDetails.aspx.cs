using AspnetUserDetails.Connection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspnetUserDetails
{
    public partial class UserDetails : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = DBConnection.CreateConnection();
             if (IsPostBack)
            {
                Save();
                FillGridView();
            }
        }

        public void Save()
        {
            txtUserID.Text = txtUserName.Text = txtEmailId.Text = txtUserPassword.Text = txtUserMobileNo.Text = "";
            btnSave.Text = "Save";
                
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd = new SqlCommand(" CreateUser", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@UserEmailId", txtEmailId.Text.Trim());
                cmd.Parameters.AddWithValue("@UserPasword", txtUserPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@UserMobileNo", txtUserMobileNo.Text.Trim());
                cmd.ExecuteNonQuery();

                lblErrorMessage.Text = "Saved Successfully";
                FillGridView();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            con.Close();
        }
        void FillGridView()
        {
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sdr = new SqlDataAdapter("UserViewAll", con);
            sdr.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dbtl = new DataTable();
            sdr.Fill(dbtl);
            con.Close();
            gvdUser.DataSource = dbtl;
            gvdUser.DataBind();
             

        }

    }
    }
