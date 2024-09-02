using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        string Constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\AttendancePortal.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(Constr);
        con.Open();
        string str = "insert into AddTeacher values(@tnm,@gender,@email,@mobile,@qualification,@address,@city)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@tnm",txtname.Text);
        cmd.Parameters.AddWithValue("@gender",ddlgender.SelectedValue);
        cmd.Parameters.AddWithValue("@email",txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile",txtmobile.Text);
        cmd.Parameters.AddWithValue("@qualification",txtqual.Text);
        cmd.Parameters.AddWithValue("@address",txtadd.Text);
        cmd.Parameters.AddWithValue("@city",txtcity.Text);
        
        int ans = cmd.ExecuteNonQuery();
        if(ans>0)
        {
            lblresult.Text = "Data added successfully..";
            txtname.Text = "";
            ddlgender.SelectedValue = "";
            txtemail.Text = "";
            txtmobile.Text = "";
            txtqual.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";

        }
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        ddlgender.SelectedValue= "";
        txtemail.Text = "";
        txtmobile.Text = "";
        txtqual.Text = "";
        txtadd.Text = "";
        txtcity.Text = "";
            
    }
}