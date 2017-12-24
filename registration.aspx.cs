using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineExamConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from Student where UserName='" + txtUsername.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        if (temp == 1)
        {
            Response.Write("User Already Exists");
        }
        conn.Close();
    }



    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        { 
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineExamConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into Student (Name,UserName,Password,Email) values (@Name ,@UserName ,@Password, @Email)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        //com.Parameters.Add("@Id", 0);
        com.Parameters.AddWithValue("@Name", txtName.Text);
        com.Parameters.AddWithValue("@UserName", txtUsername.Text);
        com.Parameters.AddWithValue("@Password", FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1"));
         
        com.Parameters.AddWithValue("@Email", txtEmail.Text);
        com.ExecuteNonQuery();
        Response.Redirect("Student.aspx");
        Response.Write("Registration is successful");

           
            conn.Close();
    }
        catch(Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}