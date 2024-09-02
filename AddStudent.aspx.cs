using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnadd_Click(object sender, EventArgs e)
    {
        string Constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\AttendancePortal.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(Constr);
        con.Open();
        string str = "insert into AddStudent1 values(@grno,@stnm,@cnm,@gender,@dob,@email,@mobile,@address)";
        SqlCommand cmd = new SqlCommand(str, con);

        cmd.Parameters.AddWithValue("@grno", txtgr.Text);
        cmd.Parameters.AddWithValue("@stnm", txtstnm.Text);
        cmd.Parameters.AddWithValue("@cnm", ddlclass.SelectedValue);
        cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedValue);
        cmd.Parameters.AddWithValue("@dob", txtbdate.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);

        cmd.Parameters.AddWithValue("@address", txtadd.Text);

        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
        {
            lblresult.Text = "Data added successfully..";
            txtgr.Text = "";
            txtstnm.Text = "";
           // ddlclass.SelectedValue= "";
            ddlgender.SelectedValue = "";
            txtbdate.Text = "";
            txtemail.Text = "";
            txtmobile.Text = "";

            txtadd.Text = "";

        }
        
    }
}