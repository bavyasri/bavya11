using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=INETZ-5-PC;Initial Catalog=twitter;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cd = con.CreateCommand();
        cd.CommandType = CommandType.Text;
        cd.CommandText = "insert into userregister values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedItem + "','" + FileUpload1.PostedFile.FileName + "')";
        cd.ExecuteNonQuery();
        con.Close();
        Response.Write("REGISTERED SUCCESSFULLY");
        Response.Redirect("userlogin.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userregistration.aspx");
    }
}