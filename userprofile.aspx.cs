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

    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cd = con.CreateCommand();
        cd.CommandType = CommandType.Text;
        cd.CommandText = "update userregister SET [name]=@name,[password]=@password,[emailid]=@email-id,[mobileno]=@mobile no,[address]=@address,[dob]=@dob,[gender]@gender,[profilephoto]=@profile photo where [name]=@name";
        cd.ExecuteNonQuery();
        con.Close();
        Response.Write("UPDATED SUCCESSFULLY");
        Response.Redirect("userprofile.aspx");


    }
}