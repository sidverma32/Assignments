using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(" Data Source=208.91.198.196;Network Library=;Connection Timeout=15;Packet Size=4096;Integrated Security=no;User ID=funds;Encrypt=no;Initial Catalog=fundssgr_funds;Password=w0L!i8w6");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into register values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text + "','" + DateTime.Now + "')", con);

            cmd.ExecuteNonQuery();
            // TextBox1.Text = null; TextBox2.Text = null; TextBox3.Text = null; TextBox6.Text = null;
            Label1.Text = "*Your Details has been received & your account will be reviewed by our team within 24 hours!";

            // Response.Redirect("Login.aspx");
            cmd.Dispose();
        }
        catch (Exception e1)
        {
            Label1.Text = " User already exist";
        }
    }
}