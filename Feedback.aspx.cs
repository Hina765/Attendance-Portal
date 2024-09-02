using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string Constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\AttendancePortal.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(Constr);
        con.Open();
        string str = "insert into Feedback values(@fnm,@femail,@fcomment)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@fnm", txtunm.Text);
        cmd.Parameters.AddWithValue("@femail", txtemail.Text);
        cmd.Parameters.AddWithValue("@fcomment", txtcomment.Text);
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
        {
            lblresult.Text = "Kindly Thank you for your Feedback..";
            txtunm.Text = "";
            txtemail.Text = "";
            txtcomment.Text = "";
        }
        else
            lblresult.Text = "Sorry..Feedback is not submitted";
    }






   



























            
}

