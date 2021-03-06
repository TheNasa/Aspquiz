﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Web.Security;

public partial class student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        UserDetail ud = new UserDetail();
        try
        {
            string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
            DataTable dt = ud.CheckStudent(txtUsername.Text, hashedPassword);

            if (dt.Rows.Count > 0)
            {
                Session["Student"] = txtUsername.Text;
               
                
                Response.Redirect("MyProfile.aspx");
            }
            else
            {
                ltrMessage.Text = "Invallid User or Password!";
            }
        }
        catch (Exception ex)
        {
            ltrMessage.Text = ex.Message;
        }
    }
}