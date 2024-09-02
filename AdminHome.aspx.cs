using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text;
        string password = txtPassword.Text;
        if (username == "user" && password == "1")
        {
            Response.Redirect("~/A_HomeMast.aspx");
        }
        else
        {
            lblMessage.Text = "Invalid username or password. Please try again.";
        }
    }
}