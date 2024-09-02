using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IdentityModel.Protocols.WSTrust;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Attendance : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnadd_Click(object sender, EventArgs e)
    {

        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\AttendancePortal.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(Constr);
        con.Open();
        string str = "insert into Att values(@class,@subject,@date,@stnm,@status)";
        SqlCommand cmd = new SqlCommand(str, con);

        cmd.Parameters.AddWithValue("@class", ddlclass.SelectedValue);
        cmd.Parameters.AddWithValue("@subject", txtsubject.Text);
        cmd.Parameters.AddWithValue("@date", txtdate.Text);

        cmd.Parameters.AddWithValue("stnm", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("status", DropDownList2.SelectedValue);
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
        {
            lbladd.Text = "Attendance saved Successfully...";
        }
    }
}       





















