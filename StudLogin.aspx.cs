using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string username = txtunm.Text;
        string password = txtpsw.Text;
        if (username == "user" && password == "1")
        {
            Response.Redirect("~/S_MyProfile.aspx");
        }
        else
        {
            lblMessage.Text = "Invalid username or password. Please try again.";
        }
    }
}