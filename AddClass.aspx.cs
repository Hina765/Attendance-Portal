using System;
using System.Collections.Generic;
using System.Data.SqlClient;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddClass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   


   
   
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string Constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\AttendancePortal.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(Constr);
        con.Open();
        string str = "insert into AddClass1 values(@ClassName)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@ClassName", txtclassnm.Text);
        int ans = cmd.ExecuteNonQuery();
        if(ans>0)
        {
            lblresult.Text = "Data Inserted Successfully..";
            txtclassnm.Text = "";

        }
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtclassnm.Text = "";
    }
}