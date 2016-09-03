using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=INETZ-5-PC;Initial Catalog=twitter;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userregistration.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cd = con.CreateCommand();
        cd.CommandType = CommandType.Text;
        cd.CommandText = "select * from userregister where name='" + TextBox3.Text + "'and password='" + TextBox4.Text + "' ";     
        int a=cd.ExecuteNonQuery();
        if (a != 0)
        {
            Response.Redirect("userviewpage.aspx");
        }
        else
        {
             Response.Write("<script>alert('invalid username or password')</script>");         
        }

        
    }
}